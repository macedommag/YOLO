class TokensController < ApplicationController

  def show
    @token = Token.find(params[:id])
  end

  def edit
    @token = Token.find(params[:id])
  end

  def update
    @token = Token.find(params[:id])
    if @token.update(price_params)
      redirect_to "/wallet"
    else
      render :edit
    end
  end

  def new
    @company = Company.find(params[:company_id])
    @token = Token.new
  end

  def create
    @company = Company.find(params[:company_id])
    @token = Token.new(token_params)
    @token.user = current_user
    @token.company = @company
    purchased = @token.purchased_tokens

    if @token.save
      @company.sold_tokens += purchased
      @company.save!
      redirect_to token_path(@token)
    else
      render :new
    end
  end

  private

  def token_params
    params.require(:token).permit( :purchased_tokens )
  end

  def price_params
    params.require(:token).permit(:price)
  end
end
