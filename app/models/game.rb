class Game < ApplicationRecord
  validates :name,:summary, presence: true
end
