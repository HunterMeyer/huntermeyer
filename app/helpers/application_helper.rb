module ApplicationHelper

  def generate_form_errors(errors)
    content_tag(:div, class: 'error-label') do
      "<i class='fa fa-close'></i> Oops. Something went wrong:".html_safe
    end +
    content_tag(:ul, class: 'error-list') do
      errors.full_messages.map { |message| content_tag(:li, message.gsub('Content', 'Message')) }.join.html_safe
    end
  end

  def toggle_display_of(content)
    return content if content.size < 184 
    (content[0..184] +
    content_tag(:span, '...', class: 'elipses') +
    content_tag(:span, content[185..-1], class: 'hidden full-content') +
    link_to('javascript:void(0)', class: 'block text-right toggle-content') do
      content_tag(:i, ' Show More', class: 'fa fa-caret-down state')
    end).html_safe
  end

end
