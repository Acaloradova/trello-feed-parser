class TrelloCard
  attr_accessor :name, :description

  def initialize(name='', description='')
    @name = name
    @description = description
  end

  def link
    /(?<=Link: ).*/.match(@description).to_s
  end

  def components
    /(?<=Component\/s: ).*/.match(@description).to_s
  end

  def title_from_description
    /(?<=Title: ).*/.match(@description).to_s
  end

  def fix_version
    /(?<=Fix Version\/s: ).*/.match(@description).to_s
  end
end