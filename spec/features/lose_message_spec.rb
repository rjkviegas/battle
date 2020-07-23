feature 'displays Lose message' do
  scenario 'player has 0 HP' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content "Voldie M's HP has been reduced to 90"
  end
end