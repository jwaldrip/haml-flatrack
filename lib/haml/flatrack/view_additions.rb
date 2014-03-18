module Haml
  module Flatrack
    module ViewAdditions
      extend ActiveSupport::Autoload
      extend ActiveSupport::Concern

      dir, base = File.dirname(__FILE__), File.basename(__FILE__, '.rb')

      # Loadup constants based on filename and include them
      consts = Dir[File.join dir, base, '*'].map do |f|
        const = File.basename(f, '.rb').camelize.to_sym
      end

      consts.each { |c| autoload c }

      included do
        consts.each { |c| include const_get(c) }
      end

    end
  end
end