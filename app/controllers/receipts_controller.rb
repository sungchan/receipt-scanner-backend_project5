class ReceiptsController < ApplicationController

  def index
    @receipts = Receipt.all
    render json: @receipts
  end

  def show
    @receipt = Receipt.find(params[:id])
    render json: @receipt
  end

  def create
    @receipt = Receipt.find_or_create_by(
      payer_id: params['payer_id'],
      place_name: params['place_name'],
      img_url: params['img_url'],
      date: params['date'],
      subtotal: params['subtotal'],
      tax: params['tax'],
      total: params['total']
    )
    render json: @receipt
  end
end
