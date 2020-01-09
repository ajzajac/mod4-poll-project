class UsersController < ApplicationController

def index
    @users = User.all
    render json: @users
end

def show    
end

def create
    # user = User.new(
    #   username: params[:username],
    #   image: params[:image]
    # )
    user = User.new(userParams)
    # user.image.attach(params[:image])
    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private

  def userParams
    params.require(:user).permit(:username)
  end

end
