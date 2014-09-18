class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :priority

      t.integer :project_id

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
