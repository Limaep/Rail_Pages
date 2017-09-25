class Game < ApplicationRecord
  has_many :cars
  validates :name, presence: true
  validates :summary, presence: true, length: {minimum: 300}
end
