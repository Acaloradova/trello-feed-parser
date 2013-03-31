require 'json'
require '../bin/trello_card'

class TrelloParser
  def parse_json(json)
    board = TrelloBoard.new
    board.cards = Array.new
    board_json = JSON.parse(json)
    board.cards[0] = TrelloCard.new
    board.cards[0].name = board_json.fetch("cards").first.fetch("name")
    board.cards[0].description = board_json.fetch("cards").first.fetch("desc")
    board
  end
end  

