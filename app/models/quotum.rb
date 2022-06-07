class Quotum < ApplicationRecord
  belongs_to :user
  belongs_to :company
  validates :name, presence: true
end
