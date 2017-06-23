class MessageMailer < ApplicationMailer
  default from: "Your Mailer <noreply@thelinuxgeek.org>"
  default to: "Dave <dave@thelinuxgeek.org>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
end
