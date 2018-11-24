require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Usuario este validado" do
    it "que el primer nombre no sea blanco" do
      user = User.new(first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end
  end
end
