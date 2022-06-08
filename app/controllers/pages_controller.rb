class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
  end

  def wallet
    @companies = current_user.tokens.map { |token| token.company }.uniq
  end
end
