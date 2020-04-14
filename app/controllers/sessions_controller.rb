class SessionsController < ApplicationController

    def new
        @user = User.find_by(:email => params[:email])
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          render json: UserSerializer.new(users).serialized_json
        else 
            flash: { alert: "Couldn't find user" 
            end
    end
    def create 

    end
end
