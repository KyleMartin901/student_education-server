class AddIndexToLessonParts < ActiveRecord::Migration[5.0]
  def change
    add_index :lesson_parts, [:position, :lesson_id], unique: true
  end
end
