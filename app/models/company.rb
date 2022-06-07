class Company < ApplicationRecord
  has_many :quotas
  has_many_attached :image_url

  validates :name, :address, :equety, :net_inc, :activity, :description, presence: true
end
