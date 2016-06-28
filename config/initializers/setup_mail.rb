ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:             ENV['SMTP_ADDRESS'],
  port:                ENV['SMTP_PORT'],
  authentication:      :plain,
  user_name:           ENV['SMTP_USER_NAME'],
  password:            ENV['SMTP_PASSWORD'],
  domain:              ENV['SMTP_DOMAIN'],
  enable_starttls_auto: true
}

# address:             'smtp.sendgrid.net',
# port:                '2525',
# authentication:      :plain,
# user_name:           ENV['SENDGRID_USERNAME'],
# password:            ENV['SENDGRID_PASSWORD'],
# domain:              'heroku.com',
# enable_starttls_auto: true
# }
