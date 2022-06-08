class TokensController < ApplicationController

  def show
    @token = Token.find(params[:id])
  end

  def new
    @company = Company.find(params[:company_id])
    @token = Token.new
  end

  def create
    @company = Company.find(params[:company_id])
    @token = Token.new(company: @company, user: current_user)
    if @token.save
      redirect_to token_path(@token)
    else
      render :new
    end
  end

end
