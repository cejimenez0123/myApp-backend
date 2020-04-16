require 'securerandom'
require 'byebug'
class UsersController < ApplicationController
    def create
        user = User.create(id: SecureRandom.hex(6), name: params["name"], username: params["username"],
        password: params["password"])
        render json: UserSerializer.new(user)
    end
    def index 
        users = User.all 
        render json: UserSerializer.new(users).serialized_json
    end
    def show
        user = User.all.find_by(id: params[:id])
        render json: UserSerializer.new(user).serialized_json
    end
    
end
