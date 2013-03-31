require 'csv'
class CsvMarshaller
  def marshal(trello_board)
    CSV.generate({:col_sep => "|"}) do |csv|
      trello_board.cards.each do |card|
        csv << [card.name, card.description]
      end
    end
  end
end