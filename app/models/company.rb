class Company < ApplicationRecord
  has_many :tokens, dependent: :destroy

  validates :name, :address, :equety, :net_inc, :activity, :description, presence: true
end
