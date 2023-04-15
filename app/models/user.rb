class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_articles, through: :favorites, source: :article
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy
  has_one_attached :avatar
end
