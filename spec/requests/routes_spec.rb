require 'rails_helper'

RSpec.describe "Routes", :type => :request do
  describe "GET /routes" do
    it "works! (now write some real specs)" do
      get routes_path
      expect(response.status).to be(200)
    end
  end
end
