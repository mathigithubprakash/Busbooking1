class Route < ApplicationRecord
    validates :origin, presence: true
    validates :destination, presence: true
    validates :distance, presence: true, numericality: { only_integer: true, greater_than: 0 }
    after_validation :confirmation_route

    def confirmation_route
        puts "journey from #{origin} to #{destination} is confirmed"
    end
end
