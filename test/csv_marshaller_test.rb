require 'test/unit'
require 'treller/model/trello_board'
require 'treller/model/trello_card'
require 'treller'

class CsvMarshallerTest < Test::Unit::TestCase
  def test_marshal()
    board = TrelloBoard.new([TrelloCard.new(name="card1", description="description1"),
                             TrelloCard.new(name="card2", description="description2")])
    csv = sut().marshal(board)
    assert_equal "card1||||\ncard2||||\n", csv
  end

  def test_single_card()
    board = TrelloBoard.new([TrelloCard.new("card1", description())])
    csv = sut().marshal(board)
    assert_equal "card1|Test Description 3|cmajira.lss.emc.com/browse/IA-59742|6.5|Export - FileNet/32\n", csv
  end

  def description()
    "Link: cmajira.lss.emc.com/browse/IA-59742\nTitle: Test Description 3\nComponent/s: Export - FileNet/32\nFix Version/s: 6.5"
  end
  def sut()
    CsvMarshaller.new
  end
end