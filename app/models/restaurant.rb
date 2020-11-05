class Restaurant < ApplicationRecord
    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :name, :adress, presence: true
    validates :category, inclusion: { in: CATEGORIES }
    has_many :reviews, dependent: :destroy
end
