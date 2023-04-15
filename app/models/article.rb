class Article < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :favoriting_users, through: :favorites, source: :user
    has_many_attached :pictures
    belongs_to :user
    def self.ransackable_attributes(auth_object = nil)
        ["category", "created_at","label", "localisation", "price"]
      end
end
