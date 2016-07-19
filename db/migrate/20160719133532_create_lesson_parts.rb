class CreateLessonParts < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_parts do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end
  end
end
