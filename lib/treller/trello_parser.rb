require 'json'
require 'treller/model/trello_card'

class TrelloParser
  def parse_file(file_location)
    parse_json(File.new(file_location).read())
  end

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

