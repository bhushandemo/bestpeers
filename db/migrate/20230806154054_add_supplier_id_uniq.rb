class AddSupplierIdUniq < ActiveRecord::Migration[5.2]
  def change
    remove_index :accounts, :supplier_id
    add_index :accounts, :supplier_id, unique:true
  end
end
