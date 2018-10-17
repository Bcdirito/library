class Book < ApplicationRecord
  has_many :publishers
  has_many :authors, through: :publishers

  validates :authors, uniqueness: true
end
