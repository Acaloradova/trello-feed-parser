require 'test/unit'
require 'treller'
require 'treller/model/trello_board'
class CsvMarshallerTest < Test::Unit::TestCase
  def test_marshal()
    board = TrelloBoard.new([TrelloCard.new(name="card1", description="description1"),
                             TrelloCard.new(name="card2", description="description2")])
    csv = sut().marshal(board)
    assert_equal "card1,description1\ncard2,description2\n", csv
  end

  def sut()
    CsvMarshaller.new
  end
end