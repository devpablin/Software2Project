require 'rails_helper'

RSpec.describe Tortum, type: :model do
  before(:all)do
    @post = Tortum.new(sabor: "Chocolate", porciones:15, precio:78, tipo:"helada")
  end
  it "Deberia tener el sabor equivalente" do
    expect(@post.sabor).to eq("Chocolate")
  end
  it "Deberia tener las porciones equivalentes" do
    expect(@post.porciones).to eq(15)
  end
  it "Deberia tener el precio equivalente" do
    expect(@post.precio).to eq(78)
  end
  it "Deberia tener el tipo equivalente" do
    expect(@post.tipo).to eq("helada")
  end
end
