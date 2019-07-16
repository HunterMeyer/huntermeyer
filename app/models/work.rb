class Work < ApplicationRecord
  scope :visible, -> { where(visible: true) }
end
