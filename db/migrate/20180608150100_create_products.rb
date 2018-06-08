class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end
