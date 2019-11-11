class Poll < ApplicationRecord
    belongs_to :user
    has_many :votes
    has_many :comments
    # has_many :bets
end
