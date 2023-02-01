class ChangeSpecColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :specifications, :devices_id, :device_id
  end
end
