class Lesson < ApplicationRecord
  has_many :lesson_parts
  
  validates :position, presence: true
  validates_uniqueness_of :position
end
