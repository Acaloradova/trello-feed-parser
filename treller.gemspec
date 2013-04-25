require 'rake'

Gem::Specification.new do |s|
  s.name = 'treller'
  s.version = '0.0.1'
  s.date = '2013-02-31'
  s.summary = "Parses trello.com JSON feeds into CSV file that can be understood by Excel"
  s.description = s.summary
  s.authors = ["Julia Atlygina", "Stanislav Bashkirtsev"]
  s.email = 'stanislav.bashkirtsev@gmail.com'
  s.executables = ['treller']
  s.default_executable = 'bin/treller'
  s.files = Dir['{bin,lib,man,spec}/**/*', 'Rakefile']
  s.require_paths << ["lib"]
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'test-unit', '2.5.4'
  s.add_dependency 'json', '1.7.7'
end
