require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Usuario este validado" do
    it "que el primer nombre no sea blanco" do
      user = User.new(first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    it "que el mail sea correcto" do
      user = User.new(email: "lolo")
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end
  end
end
