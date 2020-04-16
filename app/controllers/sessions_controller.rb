class SessionsController < ApplicationController

  def new
    @user = User.new
  end
def create 
  user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: UserSerializer.new(user).serialized_json
    else 
        nil
    end
end
def destroy
    session.clear
    redirect_to root_path
end

    
end
