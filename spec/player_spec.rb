require 'player'

describe Player do

  let(:tony) { Player.new("Tony") }
  let(:sven) { Player.new("Sven") }


  describe 'name' do
    it 'returns player name' do
      expect(tony.name).to eq("Tony")
    end
  end

  describe 'hit_points' do
    it 'returns the hitpoints' do
      expect(tony.hp).to eq 60
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(sven).to receive(:reduce_hp)
      tony.attack(sven)
    end
  end

  describe 'receive damage' do
    it 'reduces the player hit points' do
      expect { tony.reduce_hp }.to change { tony.hp }.by(-10)
    end
  end
end
