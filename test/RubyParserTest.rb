require 'test/unit'
require '../bin/RubyParser'

class TrelloParserTest < Test::Unit::TestCase
  def test_single_card()
    actual_result = sut().parse_json(File.read('data/single_card.json'))
    expected_result ='Card Name,Card Description'
    assert_equal expected_result, actual_result
  end

  def test_multiple_cards()
    sut().parse_json(File.read('data/multiple_cards.json'))
  end

  def sut()
    TrelloParser.new
  end
end