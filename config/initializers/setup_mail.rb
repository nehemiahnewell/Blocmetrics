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

if Rails.env.development? || Rails.env.test?
  ActionMailer::Base.register_interceptor(SandboxEmailInterceptor)
end
