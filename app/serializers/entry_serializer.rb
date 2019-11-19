class EntrySerializer < ActiveModel::Serializer
  attributes :id, :message, :colours, :public?
  belongs_to :category
  belongs_to :user
end
