class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.authors << Author.find(book_params[:author_ids])
    Publisher.create(author_id: book_params[:author_ids], book_id: params[:id])
    redirect_to @book
  end

  private

  def book_params
    params.require(:book).permit(:author_ids)
  end
end
