class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def create
    @item = Item.find_or_create_by(
      receipt_id: params['receipt_id'],
      name: params['name'],
      cost: params['cost']
    )
    render json: @item
  end
end
