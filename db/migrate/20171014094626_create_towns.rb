class CreateTowns < ActiveRecord::Migration::Migration[4.2.7.1]
  def change
    create_table :towns do |t|
      t.string :name
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
