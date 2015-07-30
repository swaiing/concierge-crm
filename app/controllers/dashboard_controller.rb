class DashboardController < ApplicationController

  def show
    @messages = Message.all
    @message_count = @messages.size
  end

end