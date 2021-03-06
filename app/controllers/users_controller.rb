class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @users = User.find(params[:id])

    render("users/show.html.erb")
  end

  def my_likes
    @users = current_user

    render("users/my_likes.html.erb")
  end

  # def destroy
  #   @users = User.find(params[:id])
  #   @users.destroy
  # end
end
