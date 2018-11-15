require 'game'

describe Game do
  subject(:subject) {Game.new(player_1, player_2)}
  let(:player_1) {double :player_1, receive_damage: -10}
  let(:player_2) {double :player_2}


  describe '#players' do
    it "responds to player 1" do
      expect(subject.player_1).to eq(player_1)
    end
    it "responds to player 2" do
      expect(subject.player_2).to eq(player_2)
    end

  end

  describe '#attack' do
    it "responds to attack with 1 argument" do
      expect(subject).to respond_to(:attack).with(1).argument
    end

    it "damages the player" do
      expect(subject.attack(player_1)).to eq -10
    end




  end
end
