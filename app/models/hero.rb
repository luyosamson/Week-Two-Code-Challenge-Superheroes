class Hero < ApplicationRecord
    has_many :HeroPowers
    has_many :powers,through: :HeroPower
end
