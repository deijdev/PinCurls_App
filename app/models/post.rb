class Post < ApplicationRecord
    has_many :favorites   
    has_many :users, through: :favorites 
    validates :title, presence: true
    validates :content, presence: true
end
