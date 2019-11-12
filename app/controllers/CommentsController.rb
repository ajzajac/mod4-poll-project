class CommentsController < ApplicationController

def index
    @comments = Comment.all
    render json: @comments
end

def show
    @comment = Comment.find(params[:id].to_i)
    render json: @comment, status: :ok
end

def create
end

def update
end

def delete
end


end
