# frozen_string_literal: true

class Education < ApplicationRecord
  scope :visible, -> { where(visible: true) }
end
