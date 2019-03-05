class CommentsController < ApplicationController
# def new
#     # we need @decision in our `simple_form_for`
#    @decision = Decision.find(params[:decision_id])
#     @comment = Comment.new
#   end

  def create
    @comment = Comment.new(review_params)
    @comment.decision = Decision.find(params[:decision_id])
    @comment.user = current_user
    @comment.save
    redirect_to decision_path(@comment.decision)
  end

  private

  def review_params
    params.require(:comment).permit(:content, :user_id)
  end
end
