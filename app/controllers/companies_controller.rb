class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

end
