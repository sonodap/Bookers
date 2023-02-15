class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    list = Book.new(list_params)
    list.save
    redirect_to'/top'

  end

  def edit
    @book = book.find(params[:id])
  end

  def show
    @book = book.find(params[:id])
  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to '/books'
  end

  private
  def list_params
  params.require(:book).permit(:title, :body)

  end
end
