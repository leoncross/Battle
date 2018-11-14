require 'player'

describe Player do
  subject(:leon) { Player.new('leon') }
  subject(:alfred) { Player.new('alfred') }

  describe '#name' do
    it 'returns the name' do
      expect(leon.name).to eq 'leon'
    end
  end

  describe '#health' do
    it 'returns default value health (30)' do
      expect(leon.health).to eq 30
    end
  end

  describe '#receive_damage' do
    it 'takes 10 hp off from the player' do
      alfred.health
      leon.attack(alfred)
      expect(alfred.health).to eq 20
    end
  end
end
