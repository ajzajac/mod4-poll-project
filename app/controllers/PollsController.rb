class PollsController < ApplicationController

def index
    @polls = Poll.all
    render json: @polls
end

def show
end

def create
end

def delete
end


end
