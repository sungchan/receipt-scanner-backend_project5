class DebtsController < ApplicationController

  def index
    @debts = Debt.all
    render json: @debts
  end

  def show
    @debt = Debt.find(params[:id])
    render json: @debt
  end

  def create
    # @debt = Debt.find_or_create_by(debt_id: params['debt_id'], name: params['name'])
    render json: @debt
  end

end
