require 'test/unit'
require 'treller/file_extension_resolver'
class FileUtilsTest < Test::Unit::TestCase
  def test_adds_extension_if_input_does_not_have_it()
    actual = FileExtensionResolver.new().resolve_output_filename('board')
    assert_equal 'board.csv', actual
  end

  def test_replaces_extension_if_it_is_there()
    actual = FileExtensionResolver.new().resolve_output_filename('C:\\program file\\board.json')
    assert_equal 'C:\\program file\\board.csv', actual
  end
end