module AttributeExtensions

  def dates
    "#{start_date} - #{end_date}"
  end

  def location
    return city if state.blank?
    "#{city}, #{state}"
  end

  def formatted_description(column_name)
    instance_eval(column_name).split(';').map! { |d| d.gsub(/\n/, '').strip + '.' }.split.join(' ')
  end

end
