class CardsController < ApplicationController
  def new
  	@user = User.find(params[:user_id])
    current_user # returns @current_user
    @card = Card.new
  end

  def create
  	@card = Card.new
  	@card = Card.new(card_number: params[:card][:card_number],
                   expiration: params[:card][:expiration],
                   user_id: params[:card][:user_id])
    if @card.save
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = "Unsuccessful Signup"
    end

    redirect_to "/users"
  end

  def edit
  end

  def destroy
  end


end
