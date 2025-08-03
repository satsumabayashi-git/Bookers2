class PostBooksController < ApplicationController

  def index
    @post_books = PostBook.all
  end

  def show
    @post_book = PostBook.find(params[:id])
  end

  def create
    @post_book = PostBook.new(post_book_params)
end

private

def post_book_params
  params.require(:post_book).permit(:title, :opinion)
end
