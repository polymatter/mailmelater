class MessageMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def future_message(message)
	@message = message
    mail(:to => message.send_to, :subject => message.subject)
  end
end
