class RemoveColumnSpec < ActiveRecord::Migration[7.0]
  def change
    remove_column :devices, :specifications
  end
end
