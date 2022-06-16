class Token < ApplicationRecord
  attr_accessor :peer_to_peer, :quantity_purchased
  belongs_to :user
  belongs_to :company

  validate :check_max_tokens, on: :create
  validate :check_seller_max_tokens, on: :update
  validates :purchased_tokens, presence: true


  private

  def check_max_tokens
    return if @peer_to_peer

    if purchased_tokens && company.sold_tokens + purchased_tokens > company.max_tokens
      errors.add(:purchased_tokens, "Insufficient amount of Company tokens!") #primário
    end
  end


  def check_seller_max_tokens
    return unless @peer_to_peer

    if purchased_tokens && @quantity_purchased > purchased_tokens
      errors.add(:purchased_tokens, "Insufficient amount of Seller tokens!") #secundário
    end
  end
end
