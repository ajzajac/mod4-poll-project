class VotesController < ApplicationController

    def index
        @votes = Vote.all
        render json: @votes
    end

    def create
    end

end
