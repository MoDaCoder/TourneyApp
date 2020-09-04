class Player < ApplicationRecord
    has_many :match_player
    has_many :matches, through: :matches_players

    validates :name, presence:{message: "A player must have a name!"}
    validates :player_number, presence:true
end
