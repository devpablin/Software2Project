require 'rails_helper'

RSpec.describe "[Requests] Helados", type: :request do
  describe "GET /helados" do
    it "existe la ruta de helados" do
      get helados_path
      expect(response).to have_http_status(200)
    end
  end
end
