class CreateTorta < ActiveRecord::Migration[5.1]
  def change
    create_table :torta do |t|
      t.string :sabor
      t.integer :porciones
      t.float :precio
      t.string :tipo

      t.timestamps
    end
  end
end
