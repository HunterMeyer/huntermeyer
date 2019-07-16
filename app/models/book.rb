class Book < ApplicationRecord
  include OrdinalHelper
  scope :active, -> { where(status: 'Active') }
end
