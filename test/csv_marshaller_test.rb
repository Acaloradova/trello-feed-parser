require '../bin/csv_marshaller'
require 'test/unit'
require '../bin/model/trello_board'
require '../bin/model/trello_card'
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