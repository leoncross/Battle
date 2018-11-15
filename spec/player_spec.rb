require 'player'

describe Player do
  subject(:player_1) { Player.new('leon') }
  subject(:player_2) { Player.new('alfred') }

  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'leon'
    end
  end

  describe '#health' do
    it 'returns default value health (30)' do
      expect(player_1.health).to eq 30
    end
  end

  describe '#receive_damage' do
    it 'calls on dead? if health less than 0' do
      player_1.health = 10
      expect(player_1.receive_damage).to eq (true)
    end
  end
end
