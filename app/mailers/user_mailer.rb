class UserMailer < ActionMailer::Base
  
  def new_contact(email, message)
    @email = email
    @message = message
    mail(
      from:    @email,
      to:      'hunnafresh@gmail.com',
      subject: 'HunterMeyer.com | New Contact'
    )
  end

end
