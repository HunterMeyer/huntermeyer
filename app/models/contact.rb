class Contact < ActiveRecord::Base
  before_save { email.downcase! }
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :content, presence: true
end
