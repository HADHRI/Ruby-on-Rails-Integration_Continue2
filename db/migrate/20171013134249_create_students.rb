class CreateStudents < ActiveRecord::Migration::Migration[4.2.7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthday
      t.string :surname

      t.timestamps
    end
  end
end
