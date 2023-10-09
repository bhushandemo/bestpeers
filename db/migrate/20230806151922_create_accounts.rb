class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :username
      t.references :supplier, foreign_key: true

      t.timestamps
    end
#    add_index :accounts, :supplier_id, unique: true, name: 'index_accounts_on_unique_supplier_id'

  end
end
