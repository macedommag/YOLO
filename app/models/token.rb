class Token < ApplicationRecord
  attr_accessor :peer_to_peer, :quantity_purchased
  belongs_to :user
  belongs_to :company

  validate :check_max_tokens


  private

  def check_max_tokens
    if @peer_to_peer
      if @quantity_purchased > purchased_tokens
        errors.add(:purchased_tokens, "Insufficient amount of tokens!")
      end
    else
      if company.sold_tokens + purchased_tokens > company.max_tokens
        errors.add(:purchased_tokens, "Insufficient amount of tokens!")
      end
    end
  end
end
