feature 'Viewing hit points' do
    scenario 'displaying hit points' do
        sign_in_and_play
        expect(page).to have_content 'Voldie M HP: 100'
    end
end