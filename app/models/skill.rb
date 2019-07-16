# frozen_string_literal: true
class Skill < ApplicationRecord
  scope :visible, -> { where(visible: true) }

  def css_class
    name.split(',')[0].downcase.gsub(' ', '_')
  end
end
