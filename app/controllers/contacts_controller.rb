# frozen_string_literal: true

class ContactsController < ApplicationController
  HONEY_POT_PARAM = :message
  HONEY_POT_ID    = :contact_message

  before_action :check_honey_pot, only: :create

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

  def check_honey_pot
    return if params[HONEY_POT_PARAM].blank?
    bad_bot_img = 'https://cdn.dribbble.com/users/1068771/screenshots/6407347/smart_ch_head_4x.jpg'
    respond_to do |format|
      format.html { redirect_to bad_bot_img }
      format.json { render js: "window.location.href = '#{bad_bot_img}';" }
    end
  end
end
