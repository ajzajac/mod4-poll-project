class ApplicationController < ActionController::API
    
    def encode_token(id)
        JWT.encode({user_id: id}, "super_secret_code")
    end
    
    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        begin
            JWT.decode(get_auth_header, "super_secret_code")[0]["user_id"]
        rescue
            nil
        end
    end

    def session_user
        User.find_by(id: decoded_token)
    end

    def logged_in?
        !!session_user
    end

end
