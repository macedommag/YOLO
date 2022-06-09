class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_company, only: [:show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR activity ILIKE :query"
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
    else
      @companies = Company.all
    end
  end

  def show
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

end
