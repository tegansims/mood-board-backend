class EntriesController < ApplicationController

    def index
        render json: Entry.all
    end

    def show
        render json: Entry.find(params[:id])
    end

    private
    def entry_params
        require(:entry).permit(:user_id, :category_id, :message, :emotions_hash, :colours, :public? )
    end
end
