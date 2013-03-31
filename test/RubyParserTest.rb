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
    trello_board = sut().parse_json(File.read('data/multiple_cards.json'))

    assert_equal "Card Name", trello_board.cards[0].name
    assert_equal "Card Description", trello_board.cards[0].description

    assert_equal "Card Name1", trello_board.cards[1].name
    assert_equal "Card Description1", trello_board.cards[1].description
  end

  def test_with_a_lot_of_rubbish()
    trello_board = sut().parse_json(File.read('data/realworld_board.json'))

    assert_equal 4, trello_board.cards.size

  end

  def sut()
    TrelloParser.new
  end
end