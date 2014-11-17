class UsersController < ApplicationController
  def index
    @users = User.all
    current_user
    end
  end

  def create
    @user = User.new(email: params[:user][:email],
                   password: params[:user][:password],
                   name: params[:user][:name])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = "Unsuccessful Signup"
    end

    redirect_to "/users"
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    current_user # returns @current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:user])
      flash[:notice] = "Successfully Updated User"
    else
      flash[:alert] = "did not update user"
    end

    redirect_to "/users"
  end

  def destroy
  end
end
