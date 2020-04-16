class PageUsersController < ApplicationController
    def create
        page = PageUser.create(id: SecureRandom.hex(4),user_id: params[:user_id],page_id: params[:page_id])
        render json: PageUserSerializer.new(page)
    end
    def index
        pages = PageUser.all
        render json: PageUserSerializer.new(pages)
    end

    
end
