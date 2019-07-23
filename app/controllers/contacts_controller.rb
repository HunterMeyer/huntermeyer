# frozen_string_literal: true

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      flash[:success] = 'Thanks. Your message has been sent'
      redirect_to root_path
    else
      flash.now[:error] = 'Whoops. All fields are required'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:content, :email, :name)
  end
end
