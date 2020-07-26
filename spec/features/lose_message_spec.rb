feature 'Game Over' do
  context 'player has 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario 'Player 1 loses' do
      click_button 'Attack!'
      expect(page).to have_content 'Harry P loses!'
    end
  end
end