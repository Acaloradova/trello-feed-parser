require 'json'
class TrelloParser
  def parse_json(json)
    result = ''
    board = JSON.parse(json)
    result += board.fetch("cards").first.fetch("name")
    result += ","
    result += board.fetch("cards").first.fetch("desc")
    result
  end
end  

