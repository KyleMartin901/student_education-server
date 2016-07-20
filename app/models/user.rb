class User < ApplicationRecord
  has_many :part_completions, foreign_key: :student_id
  has_many :completed_parts, through: :part_completions, source: :lesson_part

  belongs_to :teacher
end
