class LessonPart < ApplicationRecord
  belongs_to :lesson
  
  validates :position, presence: true
  validates_uniqueness_of :position, scope: :lesson_id
end
