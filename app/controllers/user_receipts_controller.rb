class UserReceiptsController < ApplicationController

  def index
    @userReceipts = UserReceipt.all
    render json: @userReceipts
  end

  def show
    @userReceipt = UserReceipt.find(params[:id])
    render json: @userReceipt
  end

  def create
    @userReceipt = UserReceipt.find_or_create_by(
      user_id: params['user_id'],
      receipt_id: params['receipt_id']
    )
    render json: @userReceipt
  end


end
