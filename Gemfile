source 'https://rubygems.org'

user, repo = ENV['TRAVIS_REPO_SLUG'].to_s.split()

if ENV['CI'] && repo == 'haml-flatrack'
  gem 'flatrack', path: 'vendor/gems/flatrack'
end

# Specify your gem's dependencies in haml-flatrack.gemspec
gemspec
