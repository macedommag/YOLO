class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
  end

  def wallet
    @companies = current_user.tokens.map { |token| token.company }.uniq
    @total_tokens = current_user.tokens.map { |token| token.purchased_tokens }.sum
    @total_company= current_user.tokens.map { |token| token.company }.uniq.count
    @total_invest = current_user.tokens.map { |token| token.company.sold_tokens * token.company.price_of_token }.uniq.sum
  end
end
