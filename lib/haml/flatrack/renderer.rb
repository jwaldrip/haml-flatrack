require 'haml'
require 'flatrack/renderer/base'

module Haml
  module Flatrack
    class Renderer < ::Flatrack::Renderer::Base

      renders :haml

      def render(context = binding, &block)
        ::Haml::Engine.new(contents).render(context, &block)
      end

    end
  end
end
