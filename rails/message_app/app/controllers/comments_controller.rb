class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_comments, only: [:edit, :show, :update]

  def show
    @message = Message.find params[:message_id]
  end

  def edit
    @message = Message.find params[:message_id]
  end

  def update
    @comment = Comment.find params[:id]
    @message = Message.find params[:message_id]
    if @comment.update(comment_params)
      redirect_to message_path(@message)
    else
      render :edit
    end
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
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to message_path(@message), notice: 'Answer created' }
        format.js { render :create_success }
      else
        format.html { render '/questions/show' }
        format.js { render :create_failure }
      end
    end
  end

  def destroy
    m = Message.find params[:message_id]
    c = Comment.find params[:id]
    @comment = Comment.find params[:id]
    c.destroy
    respond_to do |format|
      format.html { redirect_to message_path(m), notice: 'deleted' }
      format.js { render }
    end
  end

  private

  def find_comments
    @comment = Comment.find params[:id]
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
