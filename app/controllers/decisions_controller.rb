class DecisionsController < ApplicationController
  before_action :set_decision, only: [:show, :edit, :update, :destroy]

  def show
    @decision = Decision.find(params[:id])
    @user_result = Vote.where(user: current_user, decision: @decision).first.result
    @public_result = @decision.future? ? 0 : public_result
    @public_results_by_numbers = Vote.where(decision: @decision).with_results.group(:result).count
    @council_results_by_numbers = council_results_numbers
  end

  def public_result
    Vote.where(decision: @decision).with_results.group(:result).count.sort_by {|k,v| v}.reverse.first[0]
  end

  def council_results_numbers
    return {"Accepté" => @decision.accepted_votes, "Refusé" => @decision.rejected_votes, "Reporté" => @decision.deferred_votes}
  end

  def index
    # @decisions = Decision.all
    # @past_decisions = Decision.past
    @vote_counter = current_user.votes.joins(:decision).where("council_date >?",Date.today).where.not(result:"pending").count

    if Decision.future.length.positive?
      @user_result = Vote.where(user: current_user)
      if params[:query].present?
        @future_decisions = Decision.future.order(created_at: :DESC).search_by_title_and_description_and_minutes(params[:query])
      elsif params[:category]
        @future_decisions = Decision.future.order(created_at: :DESC).category(params[:category])
      else
        @future_decisions = Decision.future.order(created_at: :DESC)
      end
    else
      redirect_to root_path
    end
  end

  def former
    # @decisions = Decision.all
    # @past_decisions = Decision.past
    if Decision.past.length.positive?
      if params[:query].present?
        @former_decisions = Decision.past.search_by_title_and_description_and_minutes(params[:query])
      elsif params[:council_date]
        @former_decisions = Decision.past.where(council_date: params[:council_date])
      elsif params[:category]
        @former_decisions = Decision.past.category(params[:category])
      else
        @former_decisions = Decision.past
      end
    else
      redirect_to root_path
    end
  end

  def new
    @decision = Decision.new
    # authorize @decision
  end

  def edit
  end

  def create
    @decision = Decision.new(decision_params)
    # @boat.user = current_user
    # authorize @boat

    if @decision.save
      redirect_to decision_path(@decision)
    else
      render :new
    end
  end

  def update
    authorize @decision
    # authorize @boat
    @decision.update(decision_params)
  end

  def destroy
    authorize @decision
    # authorize @boat
    @decision.destroy
    redirect_to decisions_path
  end

  private

  def decision_params
    result = params[:result].to_i
    params.require(:decision).permit(:title, :category, :description, :council_date, result, :minutes, :town_id, :photo, :accepted_votes, :rejected_votes, :deferred_votes)
  end

  def set_decision
    @decision = Decision.find(params[:id])
  end
end
