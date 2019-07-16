# frozen_string_literal: true
class ContactsController < ApplicationController
  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      render 'contacts/success'
    else
      render 'contacts/failure', locals: { errors: @contact.errors }
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
