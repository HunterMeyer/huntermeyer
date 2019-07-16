# frozen_string_literal: true
module Api
  class BooksController < ApiController
    def index
      @books = Book.active
    end
  end
end
