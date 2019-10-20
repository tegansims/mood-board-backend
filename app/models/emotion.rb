class Emotion < ApplicationRecord
    belongs_to :entry

    def self.request_emotions_hash(id, text)
        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response )
        #render json: response
        puts response
    end

end
