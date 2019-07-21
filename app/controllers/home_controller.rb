# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @work = Work.visible.order(:ordinal)
  end
end
