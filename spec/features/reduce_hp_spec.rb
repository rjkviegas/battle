feature 'removes 10 hp from player 2' do
  scenario 'clicks attack, removes 10 hp from player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Voldie M HP: 90'
  end
end
