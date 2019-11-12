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
    @comment = Comment.create(
        content: params[:content],
        user_id: params[:user_id],
        poll_id: params[:poll_id]
    )
    render json: {comment: @comment}
end

def update
end

def delete
end


end
