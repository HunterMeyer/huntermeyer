class UserMailer < ActionMailer::Base
  def new_contact(email, message)
    @email   = email
    @message = message
    mail (
      from:    @email,
      to:      'hunt@huntermeyer.com',
      cc:      'hunnafresh@gmail.com',
      subject: 'HunterMeyer.com | New Contact'
    )
  end
end
