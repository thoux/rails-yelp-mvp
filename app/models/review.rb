class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0,1,2,3,4,5]

  validates :content, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0 }, inclusion: { in: RATING }
end
