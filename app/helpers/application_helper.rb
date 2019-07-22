# frozen_string_literal: true

module ApplicationHelper
  def external_link_to(options = {})
    link_to options[:url], class: options[:html], title: options[:title], target: '_blank' do
      content_tag(:i, options[:text], class: options[:icon])
    end
  end
end
