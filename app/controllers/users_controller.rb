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
      flash[:alert] = "Unsuccessful Signup"
    end

    redirect_to "/users"
  end

  def new
    @user = User.new
  end

  def show
    current_user # returns @current_user
    @cards = Card.where(user_id: session[:user_id])
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
    session[:user_id] =  nil
    redirect_to "/users"
  end

private  
def user_params
  params.require(:user).permit(:password, :email, :fname, :lname)
end

end
