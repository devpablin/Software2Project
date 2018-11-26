require 'rails_helper'

RSpec.describe "Inventarios", type: :request do
  describe "GET /inventarios" do
    it "works! (now write some real specs)" do
      get inventarios_path
      expect(response).to have_http_status(200)
    end
  end
end
