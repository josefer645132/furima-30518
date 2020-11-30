class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :new
  
  
  def index
    @items = Item.all
  end

  def create
    binding.pry
    Item.create(item_params)
  end

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end


  def new
    @item = Item.new
  end

end
