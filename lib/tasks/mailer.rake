desc "post a test email"
task :post_mail => :environment do
  MessageMailer.future_message.deliver
end