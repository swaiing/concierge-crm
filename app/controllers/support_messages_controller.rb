class SupportMessagesController < ApplicationController

  DEFAULT_SUPPORT_USER_ID = 1

  def create

    # Send SMS
    Message.send_support_sms message_params

    # Write message to DB
    #User.first.messages.create! body: message_body
    Message.create body: message_params, user_id: DEFAULT_SUPPORT_USER_ID

    # Send back to root
    redirect_to root_path
  end

  private

  def message_params
    params.permit(:body)[:body]
  end

end