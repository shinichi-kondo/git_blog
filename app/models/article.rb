class Article < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true;
    validates :body, presence: true;
    
    has_many :likes, dependent: :destroy
    has_many :liking_users, through: :likes, source: :user
    
    attachment :image
end
