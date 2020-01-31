class FruitMachine

  attr_reader :game_credits

  def initialize
    @money = 0
    @game_credits = 0
    @slots = ["Black", "White", "Green", "Yellow"]
  end

  def display
    @slots.sample(4).join(" | ")
  end
  
  def insert(cash)
    @money += cash
    @game_credits += cash / 5
  end
end
