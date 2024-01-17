class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :bus
  belongs_to :route
  validates :seat_number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  after_create :generate_confirmation_message
  
    def generate_confirmation_message
      puts "Ticket ##{id} for #{user.name} confirmed! Seat: #{seat_number}, Bus: #{bus.bus_name}, Route: #{route.origin} to #{route.destination}"
     
    end
  
end

