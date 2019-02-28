class VotesController < ApplicationController
  before_action :set_vote, only: [ :edit, :update, :destroy, :accepted, :rejected ]

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

  def accepted
    if @vote.accepted?
      @vote.pending!
    else
      @vote.accepted!
    end
    # equivalent @vote.result = "accepted" (grace a enum sur result)
    respond_to do |format|
      format.html do
        redirect_to decision_path(@vote.decision)
      end
      format.js do
        render 'change_vote_status'
      end
    end
  end

  def rejected
    if @vote.rejected?
      @vote.pending!
    else
      @vote.rejected!
    end
    respond_to do |format|
      format.html do
        redirect_to decision_path(@vote.decision)
      end
      format.js do
        render 'change_vote_status'
      end
    end
  end

  def destroy
    authorize @vote
    @vote.destroy
    redirect_to decisions_path
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:result)
  end

end
