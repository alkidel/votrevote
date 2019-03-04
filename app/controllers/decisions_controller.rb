class DecisionsController < ApplicationController
  before_action :set_decision, only: [:show, :edit, :update, :destroy]

  def show
    @decision = Decision.find(params[:id])
    @user_result = Vote.where(user: current_user, decision: @decision).first.result
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
      Vote.new
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
    params.require(:decision).permit(:title, :category, :description, :council_date, result, :minutes, :town_id, :photo)
  end

  def set_decision
    @decision = Decision.find(params[:id])
  end
end
