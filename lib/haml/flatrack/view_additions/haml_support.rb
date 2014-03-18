module Haml
  module Flatrack
    module ViewAdditions
      module HamlSupport
        include Haml::Helpers

        def haml_buffer
          @template_object.send :haml_buffer
        end

        def is_haml?
          @template_object.send :is_haml?
        end
      end

    end
  end
end
