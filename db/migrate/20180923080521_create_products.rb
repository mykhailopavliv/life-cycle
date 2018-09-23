class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :type
      t.string :brand_name
      t.string :gender
      t.string :frame_material
      t.string :rim_material
      t.string :model_number
      t.string :net_weight
      
      t.timestamps
    end
  end
end
