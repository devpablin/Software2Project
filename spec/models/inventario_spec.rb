require 'rails_helper'

RSpec.describe Inventario, type: :model do
  describe "Nombre este validado" do
    it "que el nombre no sea blanco" do
      inventario = Inventario.new(nombre: nil)
      inventario.valid?
      expect(inventario.errors[:nombre]).to include("can't be blank")
    end
    it "que la descripcion no este vacia" do
      uinventario = Inventario.new(descripcion: nil)
      inventario.valid?
      expect(inventario.errors[:descripcion]).to include("can't be blank")
    end
    it "que el tipo no sea blanco" do
      uinventario = Inventario.new(tipo: nil)
      inventario.valid?
      expect(inventario.errors[:tipo]).to include("can't be blank")
    end
    it "precio " do
      uinventario = Inventario.new(precio: nil)
      inventario.valid?
      expect(inventario.errors[:precio]).to include("can't be blank")
    end
    it "precio tiene que ser numerico " do
      uinventario = Inventario.new(precio: nil)
      inventario.valid?
      expect(inventario.errors[:precio]).to include("not_a_number")
    end
    it "el producto debe tener una marca" do
      uinventario = Inventario.new(marca: nil)
      inventario.valid?
      expect(inventario.errors[:marca]).to include("can't be blank")
    end
    it "cantidad " do
      uinventario = Inventario.new(cantidad: nil)
      inventario.valid?
      expect(inventario.errors[:cantidad]).to include("can't be blank")
    end
    it "cantidad tiene que ser numerico " do
      uinventario = Inventario.new(cantidad: nil)
      inventario.valid?
      expect(inventario.errors[:cantidad]).to include("not_a_number")
    end
    it "el tipo de cantidad no puede estar vacio " do
      uinventario = Inventario.new(tipo_cantidad: nil)
      inventario.valid?
      expect(inventario.errors[:tipo_cantidad]).to include("can't be blank")
    end
    it "codigo de barras tiene que estar registrado " do
      uinventario = Inventario.new(cod_barras: nil)
      inventario.valid?
      expect(inventario.errors[:cod_barras]).to include("can't be blank")
    end
    it "fecha de elaboracion no puede estar en futuro " do
      uinventario = Inventario.new(fecha_elaboracion: nil)
      inventario.valid?
      expect(inventario.errors[:fecha_elaboracion]).to include("can't be in the future")
    end
    it "fecha de vencimiento no puede estar en pasado " do
      uinventario = Inventario.new(fecha_vencimiento: nil)
      inventario.valid?
      expect(inventario.errors[:fecha_vencimiento]).to include("can't be in the past")
    end

  end
end
