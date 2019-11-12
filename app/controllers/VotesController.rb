class VotesController < ApplicationController

    def index
        @votes = Vote.all
        render json: @votes
    end

    def create
        @vote = Vote.create(
            option: params[:option],
            poll_id: params[:poll_id], 
            user_id: params[:user_id]
        )
        render json: {vote: @vote}
    end

end
