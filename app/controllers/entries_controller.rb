require 'rest-client'
require 'open-uri'
require 'json'
require 'byebug'

class EntriesController < ApplicationController

    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end

    def search(id, text="default happy message")   
        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response )
        #render json: response
        @entry = Entry.find(id)
        @entry.update(emotions_hash: response)
        redirect_to entry_path(@entry)
    end


    def new
        @entry = Entry.new
    end

    def create
        newEntry = Entry.create(message: params['message'], category_id: 1, user_id: 1, public?: params['public'])

        if newEntry.save
            # do search method to get emotions_hash and colours
            #redirect_to entry_path(newEntry)
            search(newEntry.id, newEntry.message)
        else
            flash[:error] = 'Failed to add message'
            render :new
        end
        # newEntry.emotions_hash = 
        # newEntry.colours = 
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])
        @entry.update(entry_params)
        redirect_to entry_path(@entry)
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
