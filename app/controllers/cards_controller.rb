class CardsController < ApplicationController
  def new
    current_user # returns @current_user
    @card = Card.new
  end

  def create
  	@card = Card.new(card_params)
  	@card.user_id = session[:user_id]
    if @card.save
      flash[:notice] = "Signup Complete"
    else
      flash[:alert] = @card.errors.full_messages
    end

    redirect_to "/users/#{@card.user_id}"
  end

  def edit
  end

  def destroy
  end

private
def card_params
	params.require(:card).permit(:card_number, :expiration, :avatar)
end

end
