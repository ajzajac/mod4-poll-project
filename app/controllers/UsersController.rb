class UsersController < ApplicationController

def index
    @users = User.all
    render json: @users
end

def show
    
end

def create
    @user = User.new(
        name: params[:name],
        money: params[:money]
    )
    if @user.save
        render json: {user: @user}
    else
        render json: {errors: @user.errors.full_messages}
    end
end

def delete
end


end
