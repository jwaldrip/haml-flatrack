require 'haml/helpers/xss_mods'

module Haml
  module Flatrack
    module ViewAdditions
      extend ActiveSupport::Autoload
      extend ActiveSupport::Concern

      dir, base = File.dirname(__FILE__), File.basename(__FILE__, '.rb')

      # Loadup constants based on filename and include them
      consts = Dir[File.join dir, base, '*'].map do |f|
        File.basename(f, '.rb').camelize.to_sym
      end
      consts.each { |c| autoload c }
      haml_base = self
      included do
        consts.each { |c| include haml_base.const_get(c) }
        include Haml::Helpers
        include Haml::Helpers::XssMods
      end

      def initialize(response)
        @haml_buffer = nil
      end

    end
  end
end