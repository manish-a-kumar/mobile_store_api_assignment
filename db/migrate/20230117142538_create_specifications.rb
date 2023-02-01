class CreateSpecifications < ActiveRecord::Migration[7.0]
  def change
    create_table :specifications do |t|
      t.belongs_to :devices, null: false, foreign_key: true
      t.string :camera
      t.string :processor
      t.string :ram
      t.string :storage
      t.string :battery
      t.string :os_type

      t.timestamps
    end
  end
end
