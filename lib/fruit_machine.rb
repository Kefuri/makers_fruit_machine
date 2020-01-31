class FruitMachine
  def initialize
    @slots = ["Black", "White", "Green", "Yellow"]
  end
  
  def display
    @slots.join(" | ")
  end
end
