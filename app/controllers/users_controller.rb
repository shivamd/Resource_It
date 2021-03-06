class UsersController < ApplicationController
  respond_to :js, :html
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in(@user)
    end
  end

  def show
    redirect_to root_path unless current_user
    @user = current_user
  end
end
