feature 'Viewing hit points' do
    scenario 'displaying hit points' do
        visit('/')
        fill_in :player_1_name, with: 'Harry P'
        fill_in :player_2_name, with: 'Voldie M'
        click_button 'Submit'
        expect(page).to have_content 'Voldie M HP: 100'
    end
end