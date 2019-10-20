require 'bigdecimal'
require 'json'


class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :emotions

  ##move out of the controller to here
  def emotions_create(id,text)
      response = RestClient.post "https://apis.paralleldots.com/v5/emotion", { api_key: ENV['PARALLEL_DOTS_API_KEY'], text: text}
      response = JSON.parse( response ).with_indifferent_access
      # parsed_json = ActiveSupport::JSON.decode(response)
      #render json: response
      new_emotion = Emotion.create(entry_id: id, happy: response['emotion']['happy'], sad: response['emotion']['sad'], angry: response['emotion']['angry'], fear: response['emotion']['fear'], excited: response['emotion']['excited'], bored: response['emotion']['bored'] || response['emotion']['indifferent'])
      render json: new_emotion
  end

  def self.create_colour(emotion_id, entry_id)
    
  end


  def self.clean_colours_hash(id)
    #Below example of what we get back
   # "{"emotion"=>
   #  {"happy"=>0.999956, 
   # "sad"=>4.0e-06, 
   # "angry"=>1.0e-06, 
   #"fear"=>7.0e-06, 
   #"excited"=>2.2e-05, 
   #"indifferent"=>9.0e-06}}"
    #p some_hash = JSON.parse("{\"message\":\"success\"}", {:symbolize_names=>true})

    entry = self.find(id)
    entry = entry.emotions_hash.gsub(/[{}]/,'').split(',') 
    obj = {"happy": BigDecimal(entry[0].split('=>')[2]).to_f.ceil(3),
      "sad": BigDecimal(entry[1].split('=>')[1]).to_f.ceil(3),
      "angry": BigDecimal(entry[2].split('=>')[1]).to_f.ceil(3),
      "fear": BigDecimal(entry[3].split('=>')[1]).to_f.ceil(3),
      "excited": BigDecimal(entry[4].split('=>')[1]).to_f.ceil(3),
      "indifferent": BigDecimal(entry[5].split('=>')[1]).to_f.ceil(3)}
      obj
  end

 

end
