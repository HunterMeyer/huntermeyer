# frozen_string_literal: true
class Work < ApplicationRecord
  scope :visible, -> { where(visible: true) }
end
