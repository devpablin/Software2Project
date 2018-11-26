require 'rails_helper'

RSpec.describe Inventario, type: :model do
  describe "Nombre este validado" do
    it "que el nombre no sea blanco" do
      inventario = Inventario.new(nombre: nil)
      inventario.valid?
      expect(inventario.errors[:nombre]).to include("can't be blank")
    end
    it "que la descripcion no este vacia" do
      inventario = Inventario.new(descripcion: nil)
      inventario.valid?
      expect(inventario.errors[:descripcion]).to include("can't be blank")
    end
    it "que el tipo no sea blanco" do
      inventario = Inventario.new(tipo: nil)
      inventario.valid?
      expect(inventario.errors[:tipo]).to include("can't be blank")
    end
    it "precio " do
      inventario = Inventario.new(precio: nil)
      inventario.valid?
      expect(inventario.errors[:precio]).to include("can't be blank")
    end
    it "precio tiene que ser numerico " do
      inventario = Inventario.new(precio: "hola")
      inventario.valid?
      expect(inventario.errors[:precio]).to include("is not a number")
    end
    it "el producto debe tener una marca" do
      inventario = Inventario.new(marca: nil)
      inventario.valid?
      expect(inventario.errors[:marca]).to include("can't be blank")
    end
    it "cantidad " do
      inventario = Inventario.new(cantidad: nil)
      inventario.valid?
      expect(inventario.errors[:cantidad]).to include("can't be blank")
    end
    it "cantidad tiene que ser numerico " do
      inventario = Inventario.new(cantidad:"hola")
      inventario.valid?
      expect(inventario.errors[:cantidad]).to include("is not a number")
    end
    it "el tipo de cantidad no puede estar vacio " do
      inventario = Inventario.new(tipo_cantidad: nil)
      inventario.valid?
      expect(inventario.errors[:tipo_cantidad]).to include("can't be blank")
    end
    it "codigo de barras tiene que estar registrado " do
      inventario = Inventario.new(cod_barras: nil)
      inventario.valid?
      expect(inventario.errors[:cod_barras]).to include("can't be blank")
    end
    it "fecha de elaboracion no puede estar en futuro " do
      inventario = Inventario.new(fecha_elaboracion: "2019/10/10")
      inventario.valid?
      expect(inventario.errors[:fecha_elaboracion]).to include("can't be in the future")
    end
    it "fecha de vencimiento no puede estar en pasado " do
      inventario = Inventario.new(fecha_vencimiento: "2017/10/10")
      inventario.valid?
      expect(inventario.errors[:fecha_vencimiento]).to include("can't be in the past")
    end
  end
end
