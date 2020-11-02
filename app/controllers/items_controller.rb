class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end
end
