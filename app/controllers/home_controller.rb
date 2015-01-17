class HomeController < ApplicationController

  def index
    @contact     = Contact.new
    @works       = Work.all.order(:ordinal)
    @experiences = Experience.visible.order(:ordinal)
  end

end
