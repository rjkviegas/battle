require 'player'

describe Player do
    subject(:harry_p) { Player.new("Harry P") }
    subject(:voldie_m) { Player.new("Voldie M") }

    it 'returns the name' do
        expect(harry_p.name).to eq("Harry P")
    end

    it 'returns hit points' do
      expect(harry_p.hp).to eq Player::DEFAULT_HIT_POINTS
    end

    it 'damages a player' do
      expect { voldie_m.receive_damage }.to change{ voldie_m.hp }.by(-Player::DEFAULT_DAMAGE)
    end

    it 'harry meekly attacks voldie' do
      expect { harry_p.attack(voldie_m) }.to change{ voldie_m.hp }.by(-Player::DEFAULT_DAMAGE)
    end

end
