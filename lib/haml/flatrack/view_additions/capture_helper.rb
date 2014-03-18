module Haml
  module Flatrack
    module ViewAdditions
      module CaptureHelper
        extend ActiveSupport::Concern

        included do

          def capture_with_haml(*args, &block)
            if Haml::Helpers.block_is_haml?(block)
              # double assignment is to avoid warnings
              _hamlout = _hamlout = eval('_hamlout', block.binding) # Necessary since capture_haml checks _hamlout

              capture_haml(*args, &block)
            else
              capture_without_haml(*args, &block)
            end
          end

          alias_method_chain :capture, :haml

        end
      end
    end
  end
end
