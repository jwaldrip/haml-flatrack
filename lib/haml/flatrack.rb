require 'haml/flatrack/version'

module Haml
  module Flatrack
    require 'haml/flatrack/renderer'

    Haml::Options.defaults[:format] = :html5
  end
end
