class LikesController < ApplicationController
  def create
    like = Like.new
    message = Message.find params[:message_id]
    like.message = message
    like.user = current_user
    if like.save
      redirect_to message_path(message)
    else
      redirect_to message_path(message)
    end
  end

  def destroy
    message = Message.find params[:message_id]
    # byebug
    @like = current_user.likes.find params[:id]
    @like.destroy
    redirect_to message_path(message)
  end
end
