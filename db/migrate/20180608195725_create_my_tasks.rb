class CreateMyTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :my_tasks do |t|
      t.string :task_name
      t.float :valor

      t.timestamps
    end
  end
end
