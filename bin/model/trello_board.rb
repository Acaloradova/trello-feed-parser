class TrelloBoard
  attr_accessor :cards

  def initialize(cards=[])
    @cards = cards
  end
end