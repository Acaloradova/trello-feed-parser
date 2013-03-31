require 'treller/csv_marshaller'
require 'treller/trello_parser'

module Treller
  extend self

  def parse(file_location)
    parser = TrelloParser.new
    parser.parse_file(file_location)
  end
end