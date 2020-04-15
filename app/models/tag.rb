class Tag < ApplicationRecord
    has_many :post_tags, dependent: :destroy
    has_many :posts, through: :post_tags

    #  tag has many posts
# #naturalcurl  ==> posts related to #naturalcurl  
#  a post has be taged as natural curl
#  the same post can be taged as beatiful
#  post 
        #  tag  = [#natural, #curl, #conditioner]


        # migration t.array
      


    def hashify(input) 
        word = input.gsub(" ", "")

        if word.include?("#") 
            word
        else
        word = "#" + word
        end
    end


end
