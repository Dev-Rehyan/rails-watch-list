class Recipe < ApplicationRecord
  has_many :bookmarks

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..10 }
  # validates :rating, numericality: { greatwe_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
