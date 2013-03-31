require 'treller/csv_marshaller'
require 'treller/trello_parser'
require 'treller/file_extension_resolver'

module Treller
  extend self

  def parse(file_location)
    parser = TrelloParser.new
    trello_board = parser.parse_file file_location
    csv = CsvMarshaller.new().marshal(trello_board)

    output_file_location = FileExtensionResolver.new().resolve_output_filename(file_location)
    File.new(output_file_location, 'w').write(csv)
  end
end