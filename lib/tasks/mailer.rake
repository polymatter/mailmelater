desc "post a test email"
task :post_mail => :environment do
  Message.post_mail
end