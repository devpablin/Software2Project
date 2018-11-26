require 'rails_helper'

RSpec.describe "[Requests] Users", type: :request do
  describe "GET /users" do
    it "existe la ruta de usuarios" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
