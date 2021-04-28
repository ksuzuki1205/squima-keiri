class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

 def destroy
    item = Item.find(params[:id])
    item.destroy
 end

  private
  def item_params
    params.require(:item).permit(:title, :partner, :explanation, :price)
  end

end
