module Haml
  module Flatrack
    module ViewAdditions
      module RenderHelper
        extend ActiveSupport::Concern

        included do

          def render_with_haml(*args, &block)
            options = args.first

            # If render :layout is used with a block, it concats rather than returning
            # a string so we need it to keep thinking it's Haml until it hits the
            # sub-render.
            if is_haml? && !(options.is_a?(Hash) && options[:layout] && block_given?)
              return non_haml { render_without_haml(*args, &block) }
            end
            render_without_haml(*args, &block)
          end

          alias_method_chain :render, :haml

          def output_buffer_with_haml
            return haml_buffer.buffer if is_haml?
            output_buffer_without_haml
          end

          alias_method_chain :output_buffer, :haml

          def output_buffer_with_haml=(new_buffer)
            if is_haml?
              if Haml::Util.rails_xss_safe? && new_buffer.is_a?(ActiveSupport::SafeBuffer)
                new_buffer = String.new(new_buffer)
              end
              haml_buffer.buffer = new_buffer
            else
              set_output_buffer_without_haml new_buffer
            end
          end

          alias_method_chain :output_buffer=, :haml

        end
      end
    end
  end
end