class SandboxEmailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to = [ ENV['DEFAULT_EMAIL'] ]
  end
end
