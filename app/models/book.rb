class Book < ActiveRecord::Base
  include OrdinalHelper
  scope :active, -> { where(status: 'Active') }

end
