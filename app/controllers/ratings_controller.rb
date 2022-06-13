class RatingsController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.company = @company
    @rating.save!
    redirect_to company_path(@company)
  end





  private

  def rating_params
    params.require(:rating).permit(:stars)
  end
end
