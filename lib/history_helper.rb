# frozen_string_literal: true

module HistoryHelper
  def self.included(base)
    base.include InstanceMethods
  end

  module InstanceMethods
    def dates
      "#{start_date} - #{end_date}"
    end

    def location
      return city if state.blank?
      "#{city}, #{state}"
    end

    def formatted_description
      long_description.gsub(';', '.').gsub(/\n/, '')
    end
  end
end
