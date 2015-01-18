class Skill < ActiveRecord::Base
  scope :visible, -> { where(visible: true) }

end
