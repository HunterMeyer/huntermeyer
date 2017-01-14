json.type :book
json.results @books do |book|
  json.(book, :title, :author, :genre, :subject, :summary, :url, :image_url, :ordinal)
end
