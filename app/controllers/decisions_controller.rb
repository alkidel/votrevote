class DecisionsController < ApplicationController
    before_action :set_decision, only: [:show, :edit, :update, :destroy]

  def show
    @decision = Decision.find(params[:id])
    @user_result = Vote.where(user: current_user, decision: @decision).first.result
  end

  def index
    # @decisions = Decision.all
    # @past_decisions = Decision.past
    @user_result = Vote.where(user: current_user)
    if params[:category]
      @future_decisions = Decision.future.category(params[:category])
    else
      @future_decisions = Decision.future
    end

  end

  def new
    @decision = Decision.new
    authorize @decision
    # authorize @boat
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
    params.require(:decision).permit(:title, :category, :description, :council_date, :result, :minutes, :town_id, :photo)
  end

  def set_decision
    @decision = Decision.find(params[:id])
  end
end
