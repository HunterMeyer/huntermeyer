# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @contact = Contact.new
  end
end
