require 'rails_helper'

RSpec.describe "Pruebas", type: :request do
  describe "GET /pruebas" do
    it "works! (now write some real specs)" do
      get pruebas_path
      expect(response).to have_http_status(200)
    end
  end
end
