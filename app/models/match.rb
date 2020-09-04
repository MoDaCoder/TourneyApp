class Match < ApplicationRecord
    has_many :matches_players, dependent: :delete_all
    has_many :players, through: :matches_players
    has_many :users, through: :players

    validates :match_number, presence:{message: "A match must have a number!"}
    validates :match_date, presence:true
    accepts_nested_attributes_for :players, reject_if: proc { |attributes| attributes[:name].blank? || attributes[:player_number].blank?}
end
