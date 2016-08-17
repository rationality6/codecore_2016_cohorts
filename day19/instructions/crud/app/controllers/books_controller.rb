class BooksController < ApplicationController
  before_action :find_book, only: [:show, :destroy, :edit, :update]
  def index
    @books = Book.order(created_at: :desc)
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: 'Q!'
    else
      flash[:alert] = 'Please fix errors below before saving'
      render :new
    end
  end

  def edit
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit([:title, :author, :price, :length])
  end
end
