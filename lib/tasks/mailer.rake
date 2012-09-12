desc "post a test email"
task :post_mail => :environment do

  #loop over every message
    t = Time.now
    msg_send_time = t + 120 #time to send each message

    if (t > msg_send_time)
      MessageMailer.future_message.deliver
	  puts "send message"
    else
      puts "message not ready to send"
    end

  #end loop
end