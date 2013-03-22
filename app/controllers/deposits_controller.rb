class DepositsController < ApplicationController
  respond_to :html

  before_filter :load_resource


  def new
    respond_with @deposit
  end

  def create
    if @deposit.valid?
      Payment.create(name: "Deposit", description: @deposit.reason, amount: @deposit.amount)
    end
    respond_with @deposit, location: payments_path
  end

private

  def load_resource
    @deposit = Deposit.new
    @deposit.localized.attributes = params[:deposit] if params[:deposit].present?
  end

end
