class Ingredient < ApplicationRecord
    belongs_to :recipe
    validates :name, presence: true, uniqueness:true, length: { minimum:3}
    validates :amount, presence:true, numericality:{greater_than: 0}
    validates :units, inclusion: { in: %w(g ml pcs),
        message: "%{value} is not a valid unit" }
end
