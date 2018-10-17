class Author < ApplicationRecord
  has_many :publishers
  has_many :books, through: :publishers

  validates :name, presence: true
  validates :birth_year, presence: true
end
