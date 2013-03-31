require 'treller/csv_marshaller'
require 'treller/trello_parser'

module Treller
  extend self

  def parse(file_location)
    parser = TrelloParser.new
    csv = parser.parse_file file_location
    CsvMarshaller.new().marshal csv

    output_file_location = file_location.ends_with?()
  end
end