class SandboxEmailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to = ['someuser@example.com']
  end
end
