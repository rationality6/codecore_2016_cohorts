class LikesController < ApplicationController
  def create
    @like = Like.new
    @message = Message.find params[:message_id]
    @like.message = @message
    @like.user = current_user
    respond_to do |format|
      if @like.save
        format.html { redirect_to message_path(@message) }
        format.js { render }
      else
        format.html { redirect_to message_path(@message) }
        format.js { render }
      end
    end
  end

  def destroy
    message = Message.find params[:message_id]
    # byebug
    @like = current_user.likes.find params[:id]
    @like.destroy
    respond_to do |format|
      format.html {redirect_to message_path(message)}
      format.js { render }
    end
  end
end
