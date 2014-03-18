require 'haml/flatrack/version'
require 'active_support/all'
require 'flatrack'
require 'haml'

Haml::Options.defaults[:format] = :html5

module Haml
  module Flatrack
    extend ActiveSupport::Autoload
    autoload :ViewAdditions

    ::Flatrack::View.class_eval { include ViewAdditions }
  end
end
