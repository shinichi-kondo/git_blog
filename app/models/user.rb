class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :articles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile, dependent: :destroy
  has_many :articles, dependent: :destroy
  
  has_many :likes, dependent: :destroy
  has_many :like_articles, through: :likes, source: :article
  delegate :name, to: :profile
end
