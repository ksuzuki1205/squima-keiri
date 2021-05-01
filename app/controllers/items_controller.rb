class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :destroy, :update]
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.includes(:user)
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  def destroy
    @item.destroy
  end

  def edit
  end

  def show
  end

  def update
    @item.update(item_params)
  end


  private
  def item_params
    params.require(:item).permit(:title, :partner, :explanation, :price).merge(user_id: current_user.id)
    
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
