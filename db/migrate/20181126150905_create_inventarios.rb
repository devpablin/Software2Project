class CreateInventarios < ActiveRecord::Migration[5.1]
  def change
    create_table :inventarios do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipo
      t.float :precio
      t.string :marca
      t.float :cantidad
      t.string :tipo_cantidad
      t.string :cod_barras
      t.date :fecha_elaboracion
      t.date :fecha_vencimiento

      t.timestamps
    end
  end
end
