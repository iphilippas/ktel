require 'rails_helper'

feature "Editing Destination" do

	before do
		FactoryGirl.create(:destination, city: "Αθήνα", km_real: 200, km_plasma: 2)
    
    visit "/destinations"
    click_link "Δρομολόγιο"
    click_link "Επεξεργασία"
	end

  scenario "Updating the destination" do
    
    fill_in "Πόλη", with: "Αθήναι"
    click_button "Ενημερώστε Προορισμός"
    expect(page).to have_content("Ο προορισμός ενημερώθηκε")
  end

  
end