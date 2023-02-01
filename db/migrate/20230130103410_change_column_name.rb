class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    change_column :devices, :mrp, :integer, using: 'mrp::integer'
  end
end
