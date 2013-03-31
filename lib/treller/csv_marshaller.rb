require 'csv'
class CsvMarshaller
  def marshal(trello_board)
    result_csv = CSV.generate({:col_sep => '|', :quote_char => "\0"}) do |csv|
      trello_board.cards.each do |card|
        csv << [card.name, card.title_from_description, card.link, card.fix_version, card.components]
      end
    end
    result_csv.gsub("\0", '')
  end
end