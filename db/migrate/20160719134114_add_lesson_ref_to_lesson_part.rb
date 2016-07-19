class AddLessonRefToLessonPart < ActiveRecord::Migration[5.0]
  def change
    add_reference :lesson_parts, :lesson, foreign_key: true
  end
end
