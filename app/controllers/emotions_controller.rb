class EmotionsController < ApplicationController
   
    def index
        render json: Emotion.all
    end

    def show
        render json: Emotion.find(params[:id])
    end


    private

    def emotions_params 
        params.require(:emotion).permit(:entry_id, :event_id)
    end


end
