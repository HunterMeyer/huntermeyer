module Api
  class BooksController
    def index
      @books = Book.active
    end
  end
end
