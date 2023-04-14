class Article < ApplicationRecord
    has_many_attached :pictures
    belongs_to :user
    def self.ransackable_attributes(auth_object = nil)
        ["category", "updated_at","label", "localisation", "price"]
      end
end
