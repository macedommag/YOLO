class QuotasController < ApplicationController

  def show
    @quotum = Quotum.find(params[:id])
  end

  def new
    @company = Company.find(params[:company_id])
    @quotum = Quotum.new
  end

  def create
    @company = Company.find(params[:company_id])
    @quotum = Quotum.new(company: @company, user: current_user)
    @quotum.save
    redirect_to company_quota_path(@quotum)
  end
end
