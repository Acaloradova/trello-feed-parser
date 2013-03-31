require 'test/unit'
require '../bin/ruby_parser'
require '../bin/trello_board'

class TrelloParserTest < Test::Unit::TestCase
  def test_single_card()
    trello_board = sut().parse_json(File.read('data/single_card.json'))
    assert_equal "Card Name", trello_board.cards[0].name
    assert_equal "Card Description", trello_board.cards[0].description
  end

  def test_multiple_cards()
    actual_result = sut().parse_json(File.read('data/multiple_cards.json'))
  end

  def sut()
    TrelloParser.new
  end
end