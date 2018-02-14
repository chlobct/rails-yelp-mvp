class Review < ApplicationRecord
    belongs_to :restaurant
    validates :content, presence: true
    RATING = 0..5
    validates :rating, presence: true
    validates :rating, numericality: {only_integer: true}
    # validates_inclusion_of :rating, :in => 0..5
    validates :rating, inclusion: { in: RATING,
    message: "%{value} is not a valid rating" }
end


# A review must have a parent restaurant.
# A review must have content and a rating.
# The rating should be a number between 0 and 5.
