require './lib/game'

describe Game do
    subject(:game) { described_class.new(player_1, player_2) }
    subject(:finished_game) { described_class.new(dead_player, player_2) }
    let(:player_1) { double :player, hp: 100  }
    let(:player_2) { double :player, hp: 100 }
    let(:dead_player) { double :player, hp: 0 }

    describe '#player_1' do
        it 'retrieves the first player' do
            expect(subject.player_1).to eq player_1 
        end
    end

    describe '#player_2' do
        it 'retrieves the second player' do
            expect(subject.player_2).to eq player_2 
        end
    end

    describe '#current_turn' do
        it 'starts as player_1' do
            expect(game.current_turn).to eq(player_1)
        end
    end

    describe '#switch_turns' do
        it 'switches the turn' do
            game.switch_turns
            expect(game.current_turn).to eq(player_2)
        end
    end

    describe '#game_over?' do
        it 'returns false if neither player is at 0 hp' do
            expect(game.game_over?).to be false
        end
    end


end