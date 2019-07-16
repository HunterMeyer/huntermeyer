# frozen_string_literal: true
class Experience < ApplicationRecord
  include OrdinalHelper
  include HistoryHelper
  scope :visible, -> { where(visible: true) }
end
