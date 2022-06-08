class Token < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validate :check_max_tokens

  private

  def check_max_tokens
    if company.sold_tokens + purchased_tokens > company.max_tokens
      errors.add(:purchased_tokens, "Insufficient amount of tokens!")
    end
  end
end
