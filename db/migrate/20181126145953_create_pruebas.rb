class CreatePruebas < ActiveRecord::Migration[5.1]
  def change
    create_table :pruebas do |t|
      t.string :name
      t.string :tipo
      t.float :precio
      t.date :fecha_vencimiento

      t.timestamps
    end
  end
end
