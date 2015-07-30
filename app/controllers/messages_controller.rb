class MessagesController < ApplicationController

  def index
    @message_count = Message.count
    render json: { size: @message_count }
  end

end