class User < ApplicationRecord
    has_secure_password
    has_many :favorites, dependent:  :destroy
    has_many :posts, through: :favorites
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :username, presence: true
end
