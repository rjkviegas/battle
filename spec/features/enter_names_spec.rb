feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Harry P'
        fill_in :player_2_name, with: 'Voldie M'
        click_button 'Submit'
        expect(page).to have_content 'Harry P vs. Voldie M'
    end
end