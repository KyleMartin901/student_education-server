class Lesson < ApplicationRecord
  validates :position, presence: true
  validates_uniqueness_of :position
end
