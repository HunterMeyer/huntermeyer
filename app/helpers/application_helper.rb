module ApplicationHelper

  def generate_form_errors(errors)
    content_tag(:div, class: 'error') do
      'Oops. Something went wrong'.html_safe +
      content_tag(:div, class: 'wrapper') do
        errors.full_messages.map { |message| content_tag(:div, message.gsub('Content', 'Message')) }.join.html_safe
      end
    end
  end

end
