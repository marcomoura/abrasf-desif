# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
# Maintain your gem's version:
require 'abrasf/desif/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'abrasf-desif'
  s.version     = Abrasf::Desif::VERSION
  s.authors     = 'Marco Moura'
  s.email       = 'marco.moura@gmail.com'
  s.homepage    = 'https://github.com/marcomoura/abrasf-desif'
  s.summary     = 'Abrasf Desif.'
  s.description = 'Tables of DES-IF'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE',
                'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.2.6'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'capybara'
end
