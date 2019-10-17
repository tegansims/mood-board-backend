class EntrySerializer < ActiveModel::Serializer
  attributes :id, :message, :emotions_hash, :colours, :public?
  belongs_to :category
  belongs_to :user
end
