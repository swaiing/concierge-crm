class Message < ActiveRecord::Base
  belongs_to :user

  # Twilio call to send SMS
  def self.send_support_sms(message_body)
      @twilio_number = ENV['TWILIO_NUMBER']
      @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
      message = @client.account.messages.create(
        :from => @twilio_number,
        :to => ENV['TWILIO_RECVNUMBER'],
        :body => message_body
      )
    end

end
