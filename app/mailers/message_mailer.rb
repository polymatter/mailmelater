class MessageMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def future_message
    mail(:to => "whalemail0@gmail.com", :subject => "Test message")
  end
end
