class BooksController < ApplicationController
  before_action :find_book, only: [:show, :destroy, :edit, :update]
  def index
    @books = Book.order(created_at: :desc)
  end

  def show
  end

  def new
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end
end
