class  UsersController < ApplicationController
  def index         # GET /drones
    @users = User.all
  end

  def show          # GET /drones/:id
    @user = User.find(params[:id])
    @booking = @user.bookings.new
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
