class Skill < ActiveRecord::Base
  scope :visible, -> { where(visible: true) }

  def css_class
    name.split(',')[0].downcase.gsub(' ', '_')
  end
end
