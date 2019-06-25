class BooksController < ApplicationController
  def index
    @books = Book.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:success] = "Book added"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
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
    params.require(:book).permit(:title, :author, :year, :quantity)
  end
end
