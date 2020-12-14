class AddDeleteTimetoProcducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :delete_at, :integer 
    add_index :products, :deleted_at
  end
end
