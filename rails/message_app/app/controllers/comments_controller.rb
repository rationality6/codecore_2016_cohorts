class CommentsController < ApplicationController

  def show
    @comment = Comment.find params[:message_id]
    byebug
  end

  def create
    # @comment = Comment.new comment_params
    # @message = Message.find params[:message_id]
    # @comment.message = @message
    # if @comment.save
    #   redirect_to message_path(@message), notice: 'Answer created'
    # else
    #   render '/questions/show'
    # end

    @message = Message.find params[:message_id]
    @comment = @message.comments.new comment_params
    if @comment.save
      redirect_to message_path(@message), notice: 'Answer created'
    else
      render '/questions/show'
    end
  end

  def destroy
    m = Message.find params[:message_id]
    c = Comment.find params[:id]
    c.destroy
    redirect_to message_path(m), notice: 'deleted'
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
