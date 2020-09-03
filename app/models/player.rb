class Player < ApplicationRecord
    validates :name, presence:{message: "A player must have a name!"}
    validates :player_number, presence:true
end
