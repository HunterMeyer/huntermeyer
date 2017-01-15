module Beta
  class HomeController < ActionController::Base
    layout 'beta'

    def index
      @books = Book.active.limit(8)
    end
  end
end
