module ApplicationHelper

  def generate_form_errors(errors)
    content_tag(:div, class: 'error-label') do
      "<i class='fa fa-close'></i> Oops. Something went wrong:".html_safe
    end +
    content_tag(:ul, class: 'error-list') do
      errors.full_messages.map { |message| content_tag(:li, message.gsub('Content', 'Message')) }.join.html_safe
    end
  end

end
