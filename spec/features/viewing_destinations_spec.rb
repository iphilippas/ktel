require 'rails_helper'

feature "Viewing destinations" do
  scenario "Listing all destinations" do
    destination = FactoryGirl.create(:destination, city: "Αθήνα", km_real: 300, km_plasma: 2)
    visit '/destinations'
    click_link 'Δρομολόγιο'
    expect(page.current_url).to eql(destination_url(destination))
end end