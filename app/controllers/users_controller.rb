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
    @user = current_user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to post_books_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end

