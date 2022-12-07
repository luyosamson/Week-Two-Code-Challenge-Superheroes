class Power < ApplicationRecord
    validates :description,presence: true
    validates :description,length: {minimum: 20}
    has_many :HeroPower
    has_many :heros,through: :HeroPower
end
