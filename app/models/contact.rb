# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :email, presence: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :content, :name, presence: true
  after_create { send_email }
  before_save { email.downcase! }

  def send_email
    ContactMailer.new_contact(self).deliver
  end
end
