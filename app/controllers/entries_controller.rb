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

    def new
        @entry = Entry.new
    end

    def create
        
        categoryId = Category.find_by(category_name: params['category']).id
        
        newEntry = Entry.create(message: params['message'], category_id: categoryId, user_id: 1, public?: params['public'])
        
        if newEntry.save 
           newEntry.colours = Emotion.create_with_colour(newEntry.id, newEntry.message)
           newEntry.save
           render json: newEntry
        else
            flash[:error] = 'Failed to add message'
            render :new
        end
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
        require(:entry).permit(:user_id, :category_id, :category, :message, :colours, :public? )
    end

  
end
