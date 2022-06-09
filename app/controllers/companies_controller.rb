class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
    @markers = [{lat: @company.latitude, lng: @company.longitude,
                 info_window: render_to_string(partial: "info_window",
                 locals: { company: @company }),
                 image_url: helpers.asset_url("yologps.png")
                }
               ]
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

end
