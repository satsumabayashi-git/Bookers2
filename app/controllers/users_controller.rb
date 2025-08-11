class UsersController < ApplicationController
  def index
    @book_new = Book.new
    @users = User.all
  end
  
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to books_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end