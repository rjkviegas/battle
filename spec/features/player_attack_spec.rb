feature 'player 1 attack confirmation' do
    scenario 'confirmation of attack displayed' do
        sign_in_and_play
        click_button "Attack!"
        expect(page).to have_content "Harry P attacked Voldie M! Voldie M's HP has been reduced to 90"
    end

    scenario 'player 2 attacks player 1' do
        sign_in_and_play
        attack_and_confirm
        click_button "Attack!"
        expect(page).to have_content "Voldie M attacked Harry P! Harry P's HP has been reduced to 90"
    end
end
