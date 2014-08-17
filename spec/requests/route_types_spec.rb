require 'rails_helper'

RSpec.describe "RouteTypes", :type => :request do
  describe "GET /route_types" do
    it "works! (now write some real specs)" do
      get route_types_path
      expect(response.status).to be(200)
    end
  end
end
