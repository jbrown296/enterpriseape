ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'app45902815@heroku.com',
  :password       => 'ypoj0n5j8718',
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}

