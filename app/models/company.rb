class Company < ApplicationRecord
  has_many :tokens, dependent: :destroy
  validates :name, :address, :equety, :net_inc, :activity, :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
