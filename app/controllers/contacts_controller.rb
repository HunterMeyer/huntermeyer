# frozen_string_literal: true

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    success  = I18n.t('contact.success')
    failure  = I18n.t('contact.failure')
    respond_to do |format|
      if @contact.save
        format.html do
          flash[:success] = success
          redirect_to root_path
        end
        format.json do
          render json: { success: true, message: success }
        end
      else
        format.html do
          flash.now[:error] = failure
          render :new
        end
        format.json do
          render json: { success: false, message: failure }
        end
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:content, :email, :name)
  end
end
