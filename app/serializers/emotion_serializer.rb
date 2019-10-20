class EmotionSerializer < ActiveModel::Serializer
  attributes :id, :angry, :happy, :excited, :fear, :bored, :sad
  belongs_to :entry
end
