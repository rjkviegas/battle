feature 'player 1 attack confirmation' do
    scenario 'confirmation of attack displayed' do
        sign_in_and_play
        click_button "Attack!"
        expect(page).to have_content 'Harry P musted all his puny strength and attacked Voldie M! How unusual of him.'
    end
end
