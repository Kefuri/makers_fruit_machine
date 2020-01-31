class FruitMachine
  def initialize
    @slots = ["Black", "White", "Green", "Yellow"]
  end

  def display
    @slots.sample(4).join(" | ")
  end
end
