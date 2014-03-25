require 'haml/flatrack/version'
require 'active_support/all'
require 'flatrack'
require 'haml'

Haml::Options.defaults[:format] = :html5

module Haml
  module Flatrack
    extend ActiveSupport::Autoload
    autoload :ViewAdditions
    autoload :TemplateAdditions

    ::Flatrack::View.class_eval { include ViewAdditions }
    ::Flatrack::Template.class_eval { extend TemplateAdditions }
  end
end
