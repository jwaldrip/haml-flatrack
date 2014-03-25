require 'spec_helper'

describe Flatrack::View::TagHelper do
  include Flatrack::FixtureHelper

  describe '#html_tag' do
    let(:expected){ render_template 'html_tag.html' }

    context 'using haml' do
      it 'should properly render' do
        template_content = render_template 'html_tag.html.haml'
        expect(template_content).to eq expected
      end
    end

    context 'using erb' do
      it 'should properly render' do
        template_content = render_template 'html_tag.html.erb'
        expect(template_content).to eq expected
      end
    end

    context 'with a preserved tag' do
      let(:expected){ render_template 'preserved_tag.html' }
      it 'should properly render' do
        template_content = render_template 'preserved_tag.html.haml'
        expect(template_content).to eq expected
      end
    end

  end

  describe '#image_tag' do
    let(:expected){ render_template 'image_tag.html' }

    context 'using haml' do
      it 'should properly render' do
        template_content = render_template 'image_tag.html.haml'
        expect(template_content).to eq expected
      end
    end

  end

  describe '#javascript_tag' do
    let(:expected){ render_template 'javascript_tag.html' }

    context 'using haml' do
      it 'should properly render' do
        template_content = render_template 'javascript_tag.html.haml'
        expect(template_content).to eq expected
      end
    end

  end

  describe '#stylesheet_tag' do
    let(:expected){ render_template 'stylesheet_tag.html' }

    context 'using haml' do
      it 'should properly render' do
        template_content = render_template 'stylesheet_tag.html.haml'
        expect(template_content).to eq expected
      end
    end

  end
end