module ApplicationHelper
  def generate_form_errors(errors)
    content_tag(:div, fa_icon('close', text: "That didn't work because:"), class: 'error-label') +
    content_tag(:ul, class: 'error-list') do
      errors.full_messages.map do |message|
        next if message =~ /is invalid/
        content_tag(:li, message.gsub('Content', 'Message'))
      end.join.html_safe
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

  def external_link_to(options = {})
    link_to options[:url], class: options[:html], title: options[:title], target: '_blank' do
      icon(options[:icon], options[:text])
    end
  end

  def icon(name, text)
    return text unless name.present?
    fa_icon(name, text: text)
  end
end
