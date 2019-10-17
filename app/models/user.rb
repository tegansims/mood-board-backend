class User < ApplicationRecord
    has_many :entries
    has_many :categories, through: :entries
    has_secure_password

end
