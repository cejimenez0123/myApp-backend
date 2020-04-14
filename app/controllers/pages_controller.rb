require 'byebug'
class PagesController < ApplicationController

    def create
        byebug
        page = Page.new(params["text"])
        render 
    end
    def index 
        byebug
    end
end
