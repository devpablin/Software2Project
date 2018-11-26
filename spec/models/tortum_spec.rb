require 'rails_helper'

RSpec.describe Tortum, type: :model do
  before(:all)do
    @post = Tortum.new(sabor: "Chocolate", porciones:15, precio:78, tipo:"helada")
  end
  it "should have a matching sabor" do
    expect(@post.sabor).to eq("Chocolate")
  end
  it "should have a matching porciones" do
    expect(@post.porciones).to eq(15)
  end
  it "should have a matching precio" do
    expect(@post.precio).to eq(78)
  end
  it "should have a matching tipo" do
    expect(@post.tipo).to eq("helada")
  end
end
