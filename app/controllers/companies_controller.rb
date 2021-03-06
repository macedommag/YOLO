class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_company, only: [:show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR activity ILIKE :query OR address ILIKE :query"
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
    else
      @companies = Company.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'companies/cards', locals: { companies: @companies }, formats: [:html] }
    end
  end

  def show
    @markers = [{lat: @company.latitude, lng: @company.longitude,
                 info_window: render_to_string(partial: "info_window",
                 locals: { company: @company }),
                 image_url: helpers.asset_url("pointer2yolo@1,25x.png")
                }
               ]
    @rating = Rating.find_by(company: @company, user: current_user)
    @rating = Rating.new unless @rating

  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

end
