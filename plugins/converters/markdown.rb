require 'redcarpet'

class Ruhoh
  module Converter
    module Markdown

      def self.extensions
        ['.md', '.markdown']
      end
      
      def self.convert(content)
        require 'redcarpet'
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:with_toc_data => true),
          :autolink => true, 
          :fenced_code_blocks => true,
	  :tables => true,
        )
        markdown.render(content)
      end

      def self.tocconvert(content)
        require 'redcarpet'
        toc = Redcarpet::Markdown.new(Redcarpet::Render::HTML_TOC)
        toc.render(content)
      end
    end
  end
end
