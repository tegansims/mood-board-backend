require 'rest-client'
require 'open-uri'
require 'json'

class EntriesController < ApplicationController

    def new

    end

    def create 
        
        #entry = Entry.create(user_id: 1, )
    end


    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end

    def search    
        text = "I'm sad we only have four weeks left to live"

        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response )
        render json: response
    end

    private
    def entry_params
        require(:entry).permit(:user_id, :category_id, :message, :emotions_hash, :colours, :public? )
    end

  
end
