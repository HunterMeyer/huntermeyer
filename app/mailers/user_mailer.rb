class UserMailer < ActionMailer::Base
  def new_contact(contact)
    @contact = contact
    mail(
      from:    'holla@huntermeyer.com',
      to:      'holla@huntermeyer.com',
      subject: 'New Contact'
    )
  end
end
