class UsersController < ApplicationController

def index
    @users = User.all
    render json: @users
end

def show    
end

def create
    user = User.new(
      username: params[:username]
    )
    if user.save
      render json: {user: user}
    else
      render json: {errors: user.errors.full_messages}
    end
  end


end
