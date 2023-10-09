class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :sname
      t.references :principle, index: { unique: true},foreign_key: true
      t.timestamps
    end
  end
end
