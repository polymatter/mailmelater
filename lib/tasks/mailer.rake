desc "post a test email"
task :post_mail => :environment do
  puts "hi there"
  Message.post_mail
  puts "bye"
end