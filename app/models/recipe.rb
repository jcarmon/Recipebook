class Recipe < ApplicationRecord
    belongs_to :author
    has_many :ingredients,  dependent: :destroy
end


