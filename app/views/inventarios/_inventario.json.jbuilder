json.extract! inventario, :id, :nombre, :descripcion, :tipo, :precio, :marca, :cantidad, :tipo_cantidad, :cod_barras, :fecha_elaboracion, :fecha_vencimiento, :created_at, :updated_at
json.url inventario_url(inventario, format: :json)
