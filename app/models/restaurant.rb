class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORIES,
  message: "%{value} is not a valid category" }
end


# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list
# ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
# Validate all model tests before moving to the routing layer. You can use this command:
