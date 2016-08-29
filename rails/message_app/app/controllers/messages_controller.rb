class MessagesController < ApplicationController
  before_action :find_message, only: [:destroy, :show, :edit, :update]

  def index
    @messages = Message.all
  end

  def show
    @comments = Comment.new
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def update
    if @message.update(message_params)
      redirect_to message_path(@message)
    else
      render :edit
    end
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    @message.destroy
    redirect_to root_path
  end

  private

  def find_message
    @message = Message.find params[:id]
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
