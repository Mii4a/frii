class Api::V1::UsersController < ApplicationController
  wrap_parameters :user, include: [:name, :email,
   :password, :password_confirmation]

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

  # def create
  #   @user = User.new(user_prams)

  #   if @user.save
  #     render json: {status: 'success', data: users}

  #   else
  #     render json: { error: @user.errors.full_messages.join('') },
  #            status: :unprocessable_entity

  #   end
  # end

  # def update
  #   if @user.update(user_params)
  #     render :show, status: :ok, location: @user
  #   else
  #     render :json, @user.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @user.destroy
  # end
  

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end