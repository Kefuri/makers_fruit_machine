require 'fruit_machine'

describe FruitMachine do
  describe "#display" do
    it "should return an array" do
      expect(subject.display).to eq(["Black", "White", "Green", "Yellow"])
    end
  end
end
