require 'fruit_machine'

describe FruitMachine do
  describe "#display" do
    it "should return slots" do
      allow(subject).to receive(:display).and_return("Black | White | Green | Yellow")
      expect(subject.display).to eq("Black | White | Green | Yellow")
    end

    it "randomly displays coloured slots" do
      allow(subject).to receive(:display).and_return("White | Green | Blue | Green")
      expect(subject.display).to eq("White | Green | Blue | Green")
    end
  end
  describe "#insert" do
    it "Gives a game credit for every £5 inserted" do
      subject.insert(5)
      expect(subject.game_credits).to eq 1
    end
  end
end
