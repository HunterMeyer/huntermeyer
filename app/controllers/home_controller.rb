# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @contact     = Contact.new
    @works       = Work.visible.order(:ordinal)
    @experiences = Experience.visible.order(:ordinal)
    @educations  = Education.visible.order(:ordinal)
    @skills      = Skill.visible.order(:ordinal)
    @books       = Book.active.order(:ordinal)
  end
end
