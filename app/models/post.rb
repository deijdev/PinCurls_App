class Post < ApplicationRecord
    has_many :favorites   
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :users, through: :favorites 
    validates :title, presence: true
    validates :content, presence: true
end
