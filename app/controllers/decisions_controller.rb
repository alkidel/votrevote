class DecisionsController < ApplicationController
  def index
    @decisions = Decision.all
  end

  def show
    @decision = Decision.find(params[:id])

  end

  def new
    @decision = Decision.new
    authorize @decision
  end

  def edit
  end

  def create
    @decision = Decision.new(decision_params)
    if @decision.save
      redirect_to decision_path(@decision)
    else
      render :new
    end
  end

  def update
    authorize @decision
    @decision.update(decision_params)
  end

  def destroy
    authorize @decision
    @decision.destroy
    redirect_to decisions_path
  end

  private

  def decision_params
    params.require(:decision).permit(:title, :category, :description, :minutes, :council_date)
  end
end

