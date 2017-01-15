class Experience < ActiveRecord::Base
  include OrdinalHelper
  include HistoryHelper
  scope :visible, -> { where(visible: true) }
end
