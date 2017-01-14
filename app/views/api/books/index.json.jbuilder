json.books @books do |book|
  json(book, :title, :author, :genre, :summary, :url, :published_at, :ordinal)
end
