class Inventario < ApplicationRecord

  validates :nombre, presence: false
  validates :descripcion, presence: true
  validates :tipo, presence: true
  validates :precio, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 1000}, presence:true
  validates :marca, presence: true
  validates :cantidad, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 1000}, presence:true
  validates :tipo_cantidad, presence: true
  validates :cod_barras, presence: true
  validate :expiration_date_cannot_be_in_the_future
  def expiration_date_cannot_be_in_the_future
    if fecha_elaboracion.present? && fecha_elaboracion > Date.today
      errors.add(:fecha_elaboracion, "can't be in the future")
    end
  end
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if fecha_vencimiento.present? && fecha_vencimiento < Date.today
      errors.add(:fecha_vencimiento, "can't be in the past")
    end
  end
end
