class SpotsVtt < ApplicationRecord
  validates :name, :start, :difficulty, presence: true
end
