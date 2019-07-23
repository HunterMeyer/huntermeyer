# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def new_contact(contact)
    @contact = contact
    mail(to: 'holla@huntermeyer.com', subject: 'New Contact')
  end
end
