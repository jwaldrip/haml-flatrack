require 'haml/helpers/xss_mods'

module Haml
  module Flatrack
    module TemplateAdditions

      PRESERVED_TAGS = %w{pre code textarea}

      def options
        local_options = { escape_html: false, preserve: PRESERVED_TAGS }
        super.merge local_options
      rescue NoMethodError
        local_options
      end

    end
  end
end