require 'test/unit'
require 'treller/model/trello_card'
class TrelloCardTest < Test::Unit::TestCase
  def test_link()
    card = TrelloCard.new("", description())
    assert_equal "cmajira.lss.emc.com/browse/IA-59742", card.link
  end

  def test_components()
    card = TrelloCard.new("", description())
    assert_equal "Export - FileNet/32", card.components
  end

  def test_title_in_description()
    card = TrelloCard.new("", description())
    assert_equal "Test Description 3", card.title_from_description
  end

  def test_fix_version
    card = TrelloCard.new("", description())
    assert_equal "6.5", card.fix_version
  end

  def description()
    "Link: cmajira.lss.emc.com/browse/IA-59742\nTitle: Test Description 3\nComponent/s: Export - FileNet/32\nFix Version/s: 6.5"
  end
end