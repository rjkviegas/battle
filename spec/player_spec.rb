require 'player'

describe Player do
    subject(:harry_p) { Player.new("Harry P") }

    it 'returns the name' do
        expect(harry_p.name).to eq("Harry P")
    end
end