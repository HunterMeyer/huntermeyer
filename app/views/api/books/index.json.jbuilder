json.books @books do |book|
  json(book, :title, :author, :genre, :subject, :summary, :url, :published_at, :ordinal)
end
