class MessagesController < ApplicationController
  before_action :find_message, only: [:destroy, :show]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
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
    byebug
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
