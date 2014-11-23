class OrdersController < ApplicationController
  def index
  end

  def create
  end

  def new
    current_user # returns @current_user
    @user = session[:user_id]
    @cards = Card.where(user_id: session[:user_id])
  end

  def show
  end
end
