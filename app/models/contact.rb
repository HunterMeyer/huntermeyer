class Contact < ActiveRecord::Base
  before_save { email.downcase! }
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :content, presence: true
  after_create { send_email }

  def send_email
    UserMailer.new_contact(self.email, self.content).deliver
  end
end
