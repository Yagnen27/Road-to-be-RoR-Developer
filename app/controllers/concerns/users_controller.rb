class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], contact: params[:user][:contact], email: params[:user][:email], address: params[:user][:address], city: params[:user][:city], city: params[:user][:city], state: params[:user][:state], pincode: params[:user][:pincode])
    if @user.save
      redirect_to users_path, notice: 'User has been created successfully'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to users_path, notice: 'User has been updated successfully'
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private

    def user_params
    params.require(:user).permit(:first_name, :last_name, :contact, :email, :address, :city, :state, :pincode)
    end
end
