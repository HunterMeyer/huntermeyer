class HomeController < ApplicationController

  def index
    @contact = Contact.new
    @works = Work.all
  end

end
