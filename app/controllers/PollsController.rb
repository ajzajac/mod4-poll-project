class PollsController < ApplicationController

def index
    @polls = Poll.all
    render json: @polls
end

def show
end

def create
    @poll = Poll.create(
        message: params[:message],
        user_id: params[:user_id]
    )
    render json: {poll: @poll}
end

def delete
end


end
