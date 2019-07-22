# frozen_string_literal: true

class Experience < ApplicationRecord
  scope :visible, -> { where(visible: true) }
end
