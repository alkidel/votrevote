class VotesController < ApplicationController
  def new
    @decision = Decision.find(params[:decision_id])
    @vote = Vote.new
    authorize @vote
    authorize @decision
  end

  def edit
    authorize @vote
  end

  def create
    @decision = Decision.find(params[:decision_id])
    @vote = Vote.new(vote_params)
    @vote.decision = @decision
    @vote.user = current_user
    authorize @vote
    if @vote.save
      redirect_to decisions_path
    else
      render :new
    end
  end

  def update
    authorize @vote

    if @vote.update(vote_params)
      redirect_to decisions_path
    else
      render :update
    end
  end

  def destroy
    authorize @vote
    @vote.destroy
    redirect_to decisions_path
  end

  private

  def vote_params
    params.require(:vote).permit(:result)
  end

end
