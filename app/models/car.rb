class Car < ApplicationRecord
  belongs_to :game
  validates :model, presence: true
  validates :make, presence: true
end
