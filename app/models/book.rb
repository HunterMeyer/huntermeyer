# frozen_string_literal: true

class Book < ApplicationRecord
  include OrdinalHelper
  scope :active, -> { where(status: 'Active') }
end
