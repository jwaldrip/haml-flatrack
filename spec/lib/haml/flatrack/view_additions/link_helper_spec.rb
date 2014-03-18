require 'spec_helper'

describe Flatrack::View::LinkHelper do
  include Flatrack::FixtureHelper

  describe '#link_to' do

    context 'using haml' do
      it 'should properly render' do
        template_content = render_template 'link_to.html.haml'
        expected_content = render_template 'link_to.html'
        expect(template_content).to eq expected_content
      end
    end

  end
end