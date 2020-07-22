def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Harry P'
    fill_in :player_2_name, with: 'Voldie M'
    click_button 'Submit'
end 