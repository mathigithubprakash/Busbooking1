class User < ApplicationRecord
    has_one :ticket
    validates :name, presence: true
    validates :email, uniqueness: true
    before_save { self.email = email.downcase }
    end
