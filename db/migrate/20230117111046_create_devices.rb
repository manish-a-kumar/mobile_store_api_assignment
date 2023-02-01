class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.belongs_to :brands, null: false, foreign_key: true
      t.string :name_of_the_phone
      t.string :model_number
      t.string :specifications
      t.string :mrp
      t.string :selling_price
      t.string :availability
      t.string :status
      t.string :image
      t.string :imei_number

      t.timestamps
    end
  end
end
