require 'player'

describe Player do

  let(:player) { Player.new("Tony") }

  describe 'name' do
    it 'returns player name' do
      expect(player.name).to eq("Tony")
    end
  end
end
