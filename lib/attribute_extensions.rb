module AttributeExtensions
  def self.included(base)
    base.include InstanceMethods
    base.extend ClassMethods
  end

  module ClassMethods
    def change_ordinals(direction = :increment)
      all.each { |obj| obj.send("#{direction}!", :ordinal) }
    end
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
