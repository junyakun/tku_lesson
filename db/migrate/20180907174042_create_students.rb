class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :lesson
      t.string :name
      t.string :date
      t.text :note

      t.timestamps
    end
  end
end
