class Post < ApplicationRecord
    belongs_to :user

    has_many :favorites 
    has_many :users, through: :favorites 

    has_many :post_tags
    has_many :tags, through: :post_tags
   

    validates :title, presence: true
    validates :content, presence: true
end
