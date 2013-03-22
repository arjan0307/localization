class PaymentsController < ApplicationController
  respond_to :html

  before_filter :load_resource

  def index
    respond_with @payments
  end

  def show
    respond_with @payment
  end

  def edit
    respond_with @payment
  end

  def new
    respond_with @payment
  end

  def update
    @payment.localized.update_attributes(params[:payment])
    respond_with @payment, location: payments_path
  end

  def create
    @payment.localized.attributes = params[:payment]
    @payment.save
    respond_with @payment, location: payments_path
  end

private

  def load_resource
    case params[:action]
    when 'index'
      @payments = Payment.scoped
    when 'new', 'create'
      @payment = Payment.new
    else
      @payment = Payment.find(params[:id])
    end
  end

end
