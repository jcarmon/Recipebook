class Author < ApplicationRecord
    has_many :recipes
    validates :first_name, presence: true, length: { minimum: 3, maximum: 25 } 
    validates :last_name, presence: true, length: { minimum: 3, maximum: 50}, uniqueness: true 

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }, 
    format: { with: VALID_EMAIL_REGEX }
    before_save { self.email = email.downcase }

   
end
