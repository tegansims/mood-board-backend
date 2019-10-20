class EmotionsController < ApplicationController
   
    def index
        render json: Emotion.all
    end

    def show
        render json: Emotion.find(params[:id])
    end

    # def new
    #     @emotion = Emotion.new
    #     response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
    #     response = JSON.parse( response )
    #     #render json: response
    #     puts response['Happy']
    #     puts @emotion
    # end

    # def create(id, text)
    #     @emotion = Emotion.new
    #     response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
    #     response = JSON.parse( response )
    #     #render json: response
    #     puts response['Happy']
    # end



    private

    def emotions_params 
        params.require(:emotion).permit(:entry_id, :rating, :event_id)
    end


end
