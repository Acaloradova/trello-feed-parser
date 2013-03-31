require 'json'
require '../bin/model/trello_card'

class TrelloParser
  def parse_json(json)
    board = TrelloBoard.new
    board_json = JSON.parse(json)
    board_json.fetch("cards").each_with_index do |card_json, i|
      card = TrelloCard.new
      card.name = card_json.fetch("name")
      card.description = card_json.fetch("desc")
      board.cards[i]=card
    end
    board
  end
end  

