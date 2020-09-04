class TaskCreateMailer < ApplicationMailer
  CONTACT_MAILER = 'nemubatubag@gmail.com'
  
  def create(msg)
    mail(to: CONTACT_MAILER, subject: msg )
  end
end
