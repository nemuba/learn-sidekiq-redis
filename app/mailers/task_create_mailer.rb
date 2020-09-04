class TaskCreateMailer < ApplicationMailer
  include Sidekiq::Mailer
  
  CONTACT_MAILER = 'nemubatubag@gmail.com'
  
  def create(msg)
    mail(to: CONTACT_MAILER, subject: msg )
  end
end
