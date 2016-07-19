class PartCompletion < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :lesson_part

  validates_presence_of [:student_id, :lesson_part_id]
  validates_uniqueness_of :student_id, scope: :lesson_part_id
end
