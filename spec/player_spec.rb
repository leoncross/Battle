require 'player'

describe Player do
  subject(:leon) { Player.new('leon') }

  describe '#name' do
    it 'returns the name' do
      expect(leon.name).to eq 'leon'
    end
  end
end
