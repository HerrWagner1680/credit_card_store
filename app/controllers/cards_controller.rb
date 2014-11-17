class CardsController < ApplicationController
  def new
  	@user = User.find(params[:id])
    current_user # returns @current_user
  end

  def edit
  end

  def destroy
  end
end
