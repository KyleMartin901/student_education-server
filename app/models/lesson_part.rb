class LessonPart < ApplicationRecord
  belongs_to :lesson

  validates :position, presence: true
  validates_uniqueness_of :position, scope: :lesson_id

  # Retern the title of the lesson for the lesson part
  def lesson_title
    lesson.title
  end
end
