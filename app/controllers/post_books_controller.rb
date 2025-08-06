class PostBooksController < ApplicationController

  def index
    @post_books = PostBook.all
    @post_book_new = PostBook.new
  end

  def show
    @post_book_new = PostBook.new
    @post_book = PostBook.find(params[:id])
  end

  def create
    @post_book = PostBook.new(post_book_params)
    @post_book.user_id = current_user.id
    @post_book.save
    redirect_to post_books_path
  end

  def destroy
    @post_book = PostBook.find(params[:id])
    @post_book.destroy
    redirect_to post_books_path
  end

  private

  def post_book_params
    params.require(:post_book).permit(:title, :opinion)
  end

end