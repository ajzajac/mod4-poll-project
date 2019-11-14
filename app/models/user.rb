class User < ApplicationRecord
    has_many :comments
    has_many :polls
    has_many :votes

    # has_one_attached :image
    # has_many :bets
    
    # def profile_pic
    #     if self.image.attached?
    #       Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path: true)
    #     else
    #       nil
    #     end
    # end

    validates :username, uniqueness: true

end
