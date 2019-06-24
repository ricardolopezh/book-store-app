class BooksController < ApplicationController
  def index
    @books = Book.all.order("created_at DESC")
  end

  def new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(book_params)
    flash[:primary] = "Book information updated"
    redirect_to books_path
  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    flash[:danger] = "Book deleted"
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :year)
  end
end
