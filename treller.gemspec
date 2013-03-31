Gem::Specification.new do |s|
  s.name = 'trello-feed-parser'
  s.version = '0.0.1'
  s.date = '2013-02-31'
  s.summary = "Parses trello.com JSON feeds into CSV file that can be understood by Excel"
  s.description = ""
  s.authors = ["Julia Atlygina", "Stanislav Bashkirtsev"]
  s.email = 'stanislav.bashkirtsev@gmail.com'
  s.homepage = 'http://rubygems.org/gems/trello-feed-parser'
  s.executables = ["bin/treller"]
  s.files = ["lib/treller.rb"]
  s.require_paths = ["lib"]

  s.add_dependency 'test-unit', "2.5.4"
end