require 'fruit_machine'

describe FruitMachine do
  describe "#pull_lever" do
    it "should return slots" do
      subject.insert(5)
      allow(subject).to receive(:pull_lever).and_return("Black | White | Green | Yellow")
      expect(subject.pull_lever).to eq("Black | White | Green | Yellow")
    end

    it "randomly displays coloured slots" do
      subject.insert(5)
      allow(subject).to receive(:pull_lever).and_return("White | Green | Blue | Green")
      expect(subject.pull_lever).to eq("White | Green | Blue | Green")
    end
    it "should deduct a credit when pulling the lever" do
      subject.insert(5)
      expect(subject.game_credits).to eq(1)
      subject.pull_lever
      expect(subject.game_credits).to eq(0)
    end
  end
  describe "#insert" do
    it "Gives a game credit for every £5 inserted" do
      subject.insert(5)
      expect(subject.game_credits).to eq 1
    end
  end
end
