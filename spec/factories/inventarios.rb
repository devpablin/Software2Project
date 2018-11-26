FactoryBot.define do
  factory :inventario do
    nombre { "MyString" }
    descripcion { "MyString" }
    tipo { "MyString" }
    precio { 1.5 }
    marca { "MyString" }
    cantidad { 1.5 }
    tipo_cantidad { "MyString" }
    cod_barras { "MyString" }
    fecha_elaboracion { "2018-11-26" }
    fecha_vencimiento { "2018-11-26" }
  end
end
