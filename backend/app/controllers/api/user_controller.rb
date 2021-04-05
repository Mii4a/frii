class Api::V1::UserController < ApplicationController

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_prams)

    if @user.save
      render json: {status: 'success', data: users}
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
