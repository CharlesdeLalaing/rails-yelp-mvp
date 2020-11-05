class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  belongs_to :restaurant
end


# rating should be an integer (FAILED - 4)
# rating should be a number between 0 and 5 (FAILED - 5)