class User < ApplicationRecord
    has_many :comments
    has_many :polls
    has_many :votes
    # has_many :bets

    validates :username, uniqueness: true

end
