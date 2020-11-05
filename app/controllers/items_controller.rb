class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    binding.pry
    Item.create(item_params)
  end



end
