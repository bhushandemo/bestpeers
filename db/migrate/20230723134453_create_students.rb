class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.references :teacher, foreign_key: true
      t.string :student_name

      t.timestamps
    end
  end
end
