class Recipe < ApplicationRecord
    belongs_to :author
    has_many :ingredients, dependent: :destroy
    validates :title,  presence: true#, #uniqueness: true#, #length: {minimum:3} 
    #validates :difficulty, presence: true
    #validates :comment, presence: true
    
end


