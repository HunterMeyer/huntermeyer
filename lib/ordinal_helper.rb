# frozen_string_literal: true

module OrdinalHelper
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def change_ordinals(direction = :increment)
      all.each { |obj| obj.send("#{direction}!", :ordinal) }
    end
  end
end
