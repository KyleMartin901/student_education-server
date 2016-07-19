class CreatePartCompletions < ActiveRecord::Migration[5.0]
  def change
    create_table :part_completions do |t|
      t.integer :student_id, null: false
      t.integer :lesson_part_id, null: false

      t.timestamps
    end

    add_index :part_completions, [:lesson_part_id, :student_id], unique: true
  end
end
