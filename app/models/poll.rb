class Poll < ApplicationRecord
    belongs_to :user
    has_many :votes
    has_many :comments
    # has_many :bets

    # def status
    #    if self.expiration <= Time.now()
    #     return true
    #    else
    #     return false
    #    end
    # end

end
