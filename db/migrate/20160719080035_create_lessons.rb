class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end
    add_index :lessons, :position, unique: true
  end
end
