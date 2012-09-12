class Message < ActiveRecord::Base

  def self.due_to_send
    t = Time.now
    Message.where("send_at < :now", :now => t)
  end

  def self.post_mail
    Message.due_to_send.each do |message|
	  MessageMailer.future_message(message).deliver
	  message.destroy
	end
  end
  
end
