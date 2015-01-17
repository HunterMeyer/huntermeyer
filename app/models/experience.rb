class Experience < ActiveRecord::Base
  include AttributeExtensions
  scope :visible, -> { where(visible: true) }

end
