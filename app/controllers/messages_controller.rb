class MessagesController < ApplicationController
  def index
    @messages = Message.all.order(id: :desc)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def message_params
    params.expect(message: [ :author, :content ])
  end
end
