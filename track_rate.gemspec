$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'track_rate/version'

Gem::Specification.new do |s|
  s.name        = 'track_rate'
  s.version     = TrackRate::VERSION
  s.authors     = ['Craig Sheen']
  s.email       = ['craig_sheen@hotmail.com']
  s.homepage    = 'http://github.com/craigsheen/track_rate'
  s.summary     = 'Track usage rates'
  s.description = 'Keep track of open/click rates'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_development_dependency 'rails'
  s.add_development_dependency 'sqlite3'
end
