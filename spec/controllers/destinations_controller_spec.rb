require 'rails_helper'

RSpec.describe DestinationsController, :type => :controller do

	it "displays an error for missing destination" do
		get :show, id: 5

		expect(response).to redirect_to(destinations_path)
		message = "Ο προορισμός δεν υπάρχει"
		expect(flash[:alert]).to eql(message)
	end
end