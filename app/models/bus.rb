class Bus < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets
  validates :bus_name, presence: true, uniqueness: true
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
