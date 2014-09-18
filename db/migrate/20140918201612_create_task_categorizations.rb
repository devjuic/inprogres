class CreateTaskCategorizations < ActiveRecord::Migration
  def change
    create_table :task_categorizations do |t|
      t.integer :task_id
      t.integer :category_id

      t.timestamps
    end
    add_index :task_categorizations, :task_id
    add_index :task_categorizations, :category_id
    add_index :task_categorizations, [:task_id, :category_id], unique: true
  end
end
