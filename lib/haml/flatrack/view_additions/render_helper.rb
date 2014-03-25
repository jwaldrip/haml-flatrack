module Haml
  module Flatrack
    module ViewAdditions
      module RenderHelper
        extend ActiveSupport::Concern

        included do

          def output_buffer_with_haml
            return haml_buffer.buffer if is_haml?
            output_buffer_without_haml
          end

          alias_method_chain :output_buffer, :haml

          def output_buffer_with_haml=(new_buffer)
            if is_haml?
              haml_buffer.buffer = new_buffer
            else
              self.output_buffer_without_haml= new_buffer
            end
          end

          alias_method_chain :output_buffer=, :haml

        end
      end
    end
  end
end