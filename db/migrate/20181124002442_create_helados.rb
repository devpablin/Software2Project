class CreateHelados < ActiveRecord::Migration[5.1]
  def change
    create_table :helados do |t|
      t.string :nombre
      t.float :precio
      t.string :sabor
      t.string :tipo

      t.timestamps
    end
  end
end
