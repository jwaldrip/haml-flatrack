module Haml
  module Flatrack
    module ViewAdditions
      module TagHelper
        extend ActiveSupport::Concern

        included do

          def html_tag_with_haml(name, *args, &block)
            return html_tag_without_haml(name, *args, &block) unless is_haml?

            preserve = haml_buffer.options[:preserve].include?(name.to_s)

            if block_given? && block_is_haml?(block) && preserve
              return html_tag_without_haml(name, *args) { preserve(&block) }
            end

            content = html_tag_without_haml(name, *args, &block)
            content = preserve(content) if preserve && content
            content
          end

          alias_method_chain :html_tag, :haml
        end
      end
    end
  end
end
