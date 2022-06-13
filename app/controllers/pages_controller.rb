class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
  end

  def wallet
    @tokens = current_user.tokens.includes(:company).where.not(purchased_tokens: 0).order("companies.name")
    @companies = current_user.tokens.includes(:company).where.not(purchased_tokens: 0).map { |token| token.company }.uniq.count
    @total_tokens = current_user.tokens.sum(:purchased_tokens)
    @total_invest = current_user.tokens.map { |token| token.purchased_tokens * token.company.price_of_token }.sum
  end
end
