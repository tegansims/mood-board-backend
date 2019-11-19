class User < ApplicationRecord
    has_many :entries
    has_many :categories, through: :entries
    has_secure_password
    accepts_nested_attributes_for :categories, :entries


    validates :email, presence: true
    validates :password, presence: true
    validates :email, uniqueness: true

end
