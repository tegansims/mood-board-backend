class Emotion < ApplicationRecord
    belongs_to :entry

    def self.request_emotions_hash(id, text)
        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response )
        #render json: response
        puts response
    end

    def self.create_with_colour(id,text)
        response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response = JSON.parse( response ).with_indifferent_access
        # parsed_json = ActiveSupport::JSON.decode(response)
        #render json: response
        new_emotion = Emotion.create(entry_id: id, happy: response['emotion']['happy'], sad: response['emotion']['sad'], angry: response['emotion']['angry'], fear: response['emotion']['fear'], excited: response['emotion']['excited'], bored: response['emotion']['bored'] || response['emotion']['indifferent'])
        # render json: Entry.find(id)
        colour = new_emotion.to_hex
    end
  
    def get_values
        numbers = self.attributes.values
        numbers.slice(1..numbers.length-2)
    end

    def to_hex
        numberarray = self.get_values.map { |num| (num*16).round.to_s(16) }
        return numberarray[0]+numberarray[3]+numberarray[1]+numberarray[2]+numberarray[4]+numberarray[5]
     end
end
