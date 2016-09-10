class UserMailer < ActionMailer::Base
  def new_contact(contact)
    @contact = contact
    mail(
      from:    'holla@huntermeyer.com',
      to:      'huntermeyer@live.com',
      subject: 'HunterMeyer.com | New Contact'
    )
  end
end
