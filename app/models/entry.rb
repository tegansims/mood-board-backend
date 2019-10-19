require 'bigdecimal'
require 'json'


class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :category

  ##move out of the controller to here
  def get_emotions

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

  def self.create_colour(obj)
    
  end

end
