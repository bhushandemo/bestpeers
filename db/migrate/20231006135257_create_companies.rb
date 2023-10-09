class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
