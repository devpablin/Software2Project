require 'rails_helper'

RSpec.describe "Torta", type: :request do
  describe "GET /torta" do
    it "Existe ruta de tortas" do
      get torta_path
      expect(response).to have_http_status(200)
    end
  end
end
