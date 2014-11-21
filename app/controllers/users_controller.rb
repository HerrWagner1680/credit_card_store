class UsersController < ApplicationController
  def index
    current_user #removed second end following this line 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = @user.errors.full_messages
    end

    redirect_to "/users/#{@user.id}"
  end

  def new
    @user = User.new
  end

  def edit
    current_user # returns @current_user
    @user = User.find(params[:id])
    @cards = Card.where(user_id: session[:user_id])
  end

  def show
    current_user # returns @current_user
    @user = User.find(params[:id])
    @cards = Card.where(user_id: session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:user])
      flash[:notice] = "Successfully Updated User"
    else
      flash[:alert] = @user.errors.full_messages
    end

    redirect_to "/users"
  end

  def destroy
    session[:user_id] =  nil
    redirect_to "/users"
  end

private  
def user_params
  params.require(:user).permit(:password, :email, :fname, :lname, :avatar)
end

end
