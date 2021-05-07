class UsersController < ApplicationController
  def show
    if user_signed_in? 
      @items = current_user.items
    else
      redirect_to root_path
    end
  end

  def edit
  end

end
