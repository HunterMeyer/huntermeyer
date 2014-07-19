class ContactsController < ApplicationController
  render layout: 'application'

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      flash[:success] = 'Thanks you message has been sent.'
      redirect_to root_path
    else
      flash[:warning] = 'Oops. Something was missing. We need your email and message.'
      render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :content)
  end
end
