class Emotion < ApplicationRecord
    belongs_to :entry

    def self.create_with_colour(id,text)
        response = RestClient.post "https://apis.paralleldots.com/v4/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
        response2 = JSON.parse( response ).with_indifferent_access

        new_emotion = Emotion.create(entry_id: id, happy: response2[:emotion][:Happy], sad: response2[:emotion][:Sad], angry: response2[:emotion][:Angry], fear: response2[:emotion][:Fear], excited: response2[:emotion][:Excited], bored: response2[:emotion][:Bored] || response2[:emotion][:Indifferent])
  
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
