feature 'Viewing hit points' do
    scenario 'displaying hit points' do
        sign_in_and_play
        expect(page).to have_content "Voldie M's HP: 100"
        expect(page).to have_content "Harry P's HP: 100"
    end
end