require 'rails_helper'

feature 'Create Destinations' do
	scenario 'should create destination' do
		visit '/destinations'

		click_link('Νέος Προορισμός')
		fill_in('Πόλη', with: 'Αθήνα')
		fill_in('Χιλιόμετρα', with: '700')
		fill_in('Πλασματικά χμ', with: '900')
		
		click_button 'Δημιουργήστε Προορισμός'

		expect(page).to have_content('Ο προορισμός δημιουργήθηκε')
	end

	scenario 'if city is missing do not save' do
		visit '/destinations'

		click_link('Νέος Προορισμός')
		
		fill_in('Χιλιόμετρα', with: '700')
		fill_in('Πλασματικά χμ', with: '900')
		
		click_button 'Δημιουργήστε Προορισμός'

		expect(page).to have_content('δεν πρέπει να είναι κενό')
	end
end