class LoginController < ApplicationController

    def login
        user = User.find_by(username: params[:username])

        if user
           
            render json: {user: user}
        else
            render json: {errors: "Username incorrect."}
        end
    end

    def auto_login   
        if session_user
            render json: {user: session_user}
        else
            render json: {errors: "User not found. Please login again. "}
        end
    end
  

end
