class Match < ApplicationRecord
    validates :match_number, presence:{message: "A match must have a number!"}
    validates :match_date, presence:true 
end
