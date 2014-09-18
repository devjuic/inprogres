class CreateTaskFlags < ActiveRecord::Migration
  def change
    create_table :task_flags do |t|
      t.integer :task_id
      t.integer :flag_id

      t.timestamps
    end
    add_index :task_flags, :task_id
    add_index :task_flags, :flag_id
    add_index :task_flags, [:task_id, :flag_id], unique: true
  end
end
