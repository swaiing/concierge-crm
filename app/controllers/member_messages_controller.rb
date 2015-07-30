class MemberMessagesController < ApplicationController

  skip_before_filter  :verify_authenticity_token

  DEFAULT_MEMBER_USER_ID = 2

  def create
    # Write message to DB
    Message.create body: message_params, user_id: DEFAULT_MEMBER_USER_ID

    # Return nothing
    render nothing: true
  end

  private

  def message_params
    params.permit(:Body)[:Body]
  end

end