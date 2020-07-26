feature 'removes 10 hp from player 2' do
  scenario 'clicks attack, removes 10 hp from player 2' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    click_button 'Attack!'
    expect(page).to have_content "Voldie M's HP has been reduced to 90"
  end
end
