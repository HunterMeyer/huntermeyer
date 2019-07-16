# frozen_string_literal: true

class Education < ApplicationRecord
  include OrdinalHelper
  include HistoryHelper
  scope :visible, -> { where(visible: true) }
end
