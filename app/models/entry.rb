class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :emotions

  validates :message, presence: true
  validates :category, presence: true

end
