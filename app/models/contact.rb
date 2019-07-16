class Contact < ApplicationRecord
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :content, presence: true
  before_save { email.downcase! }
  after_create { send_email }

  def send_email
    ContactMailer.new_contact(self).deliver
  end
end
