class HomeController < ApplicationController
  def index
    @contact     = Contact.new
    @works       = Work.all.order(:ordinal)
    @experiences = Experience.visible.order(:ordinal)
    @educations  = Education.visible.order(:ordinal)
    @skills      = Skill.visible.order(:ordinal)
  end
end
