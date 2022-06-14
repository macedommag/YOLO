class UserTokensController < ApplicationController
  def new
    @token = Token.find(params[:token_id])
  end

  def create
    @token = Token.find(params[:token_id])
    new_token = Token.new(token_params)
    new_token.user = current_user
    new_token.company = @token.company
    new_token.peer_to_peer = true
    new_token.quantity_purchased = params[:token][:purchased_tokens].to_i
    #ATUALIZAÇÃO DO TOKEN ORIGINAL
    @token.purchased_tokens -= new_token.quantity_purchased
    @token.peer_to_peer = true
    @token.quantity_purchased = 0 #zero porque está vendendo e não comprando
    if new_token.valid? && @token.valid?
      new_token.save
      @token.save!
      redirect_to token_path(new_token)
    else
      @token.purchased_tokens = new_token.purchased_tokens
      render :new
    end
  end

  private

  def token_params
    params.require(:token).permit(:purchased_tokens)
  end
end
