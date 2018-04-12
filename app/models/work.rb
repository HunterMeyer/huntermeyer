class Work < ActiveRecord::Base
  scope :visible, -> { where(visible: true) }
end
