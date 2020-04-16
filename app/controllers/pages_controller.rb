require 'byebug'
class PagesController < ApplicationController

    def create
        page = Page.create(id: SecureRandom.hex(4),text: params["text"], title: params["title"],user_id: params["userid"])
        render json: PageSerializer.new(page).serialized_json
    end
    def index 
        pages = Page.all 
        render json: PageSerializer.new(pages)
    end
    def show 
        page = Page.find_by(id: params[:id])
        render json: PageSerializer.new(page)
    end
    def edit 
        byebug
        page = Page.find_by(id: params[:id])
        render json: PageSerializer.new(page)
    end
    def find_all_user_pages
        pages = Page.all.find_all(user_id: params[:user_id])
        pageUser = PageUsers.all.find_all(user_id: params[:user_id])
        pageUser.map(u=>u.page)
        byebug
         joinedPages = pages.concat(pageUser)
        render json: PageSerializer.new(joinedPages)
    end
    def update
        byebug
        page = Page.find_by(id: params[:id])
        render json: PageSerializer.new(page)
    end
    
end
