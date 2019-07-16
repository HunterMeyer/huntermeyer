# frozen_string_literal: true
json.type :book
json.results @books do |book|
  json.(book, :title, :author, :subject, :url, :image_url, :ordinal)
end
