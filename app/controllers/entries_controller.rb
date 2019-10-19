require 'rest-client'
require 'open-uri'
require 'json'
require 'byebug'

class EntriesController < ApplicationController

    def new

    end



    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end

    def search(text="I'm sad we only have four weeks left to live")   
        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response )
        render json: response
    end

    def create
        newEntry = Entry.new(message: params['message'], category_id: 1, user_id: 1, public?: params['public'])
        
        # do search method to get emotions_hash and colours
        
        # newEntry.emotions_hash = 
        # newEntry.colours = 
        newEntry.save
    end

    def destroy 
        @entry = Entry.find(params[:id])
        @entry.destroy
        redirect_to entries_path
    end

    private
    def entry_params
        require(:entry).permit(:user_id, :category_id, :message, :emotions_hash, :colours, :public? )
    end

  
end
