class ItemSplitsController < ApplicationController

  def index
    @itemSplits = ItemSplit.all
    render json: @itemSplits
  end

  def show
    @itemSplit = ItemSplit.find(params[:id])
    render json: @itemSplit
  end

  def create
    @itemSplit = ItemSplit.find_or_create_by(
      item_id: params['item_id'],
      user_id: params['user_id'],
      splitBetween: params['splitBetween']
    )
    render json: @itemSplit
  end

end
