class Experience < ActiveRecord::Base
  scope :visible, -> { where(visible: true) }

  def dates
    "#{start_date} -  #{end_date}"
  end

  def location
    "#{city}, #{state}"
  end

  def formatted_description(long_or_short)
    instance_eval(long_or_short).split(';').map! { |d| d.gsub(/\n/, '').strip + '.' }.split.join(' ')
  end

end
