class UsersController < ApplicationController
  def index
    @post_book_new = PostBook.new
    @users = User.all
  end
  
  def show
    @post_book_new = PostBook.new
    @user = User.find(params[:id])
    @post_books = @user.post_books
  end

  def edit
  end
end
