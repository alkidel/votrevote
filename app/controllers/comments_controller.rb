class CommentsController < ApplicationController
# def new
#     # we need @decision in our `simple_form_for`
#    @decision = Decision.find(params[:decision_id])
#     @comment = Comment.new
#   end

  def create
    @decision = Decision.find(params[:decision_id])
    @comment = Comment.new(comment_params)
    @comment.decision = @decision
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html { redirect_to decision_path(@comment.decision)}
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'decisions/show' }
        format.js  # <-- idem
      end
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @comment.save
    redirect_to decision_path(@comment.decision)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # redirect_to decision_path(@comment.decision)
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
