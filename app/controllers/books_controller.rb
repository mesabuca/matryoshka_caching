class BooksController < ApplicationController

  before_action :set_author, only: :create

  def new
    @book = Book.new
  end

  def create
    @book = @author.books.create(book_params)
    if @book.save
      redirect_to authors_path
    else
      redirect_back fallback_location: root_path
    end
  end

  private

  def set_author
    @author = Author.find(params[:author_id])
  end

  def book_params
    params.require(:book).permit(:name)
  end

end
