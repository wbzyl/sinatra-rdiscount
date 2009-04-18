require 'sinatra/base'

module Sinatra
  module RDiscountTemplate

    def rdiscount(template, options={}, locals={})
      require 'erubis' unless defined? ::Erubis::Eruby      
      require 'rdiscount' unless defined? ::RDiscount
      render :rdiscount, template, options, locals
    end
    
  private
    
    def render_rdiscount(template, data, options, locals, &block)
      if block_given?
        # render layout
        instance = ::Erubis::Eruby.new(data)
        
        locals_assigns = locals.to_a.collect { |k,v| "#{k} = locals[:#{k}]" }
        src = "#{locals_assigns.join("\n")}\n#{instance.src}"
        eval src, binding, '(__ERB__)', locals_assigns.length + 1
      else
        # render template
        markdown = ::RDiscount.new(data)
        data = markdown.to_html
        instance = ::Erubis::Eruby.new(data, :pattern => '\{% %\}')
        
        locals_assigns = locals.to_a.collect { |k,v| "#{k} = locals[:#{k}]" }
        src = "#{locals_assigns.join("\n")}\n#{instance.src}"
        eval src, binding, '(__ERB__)', locals_assigns.length + 1
      end
    end

  end

  helpers RDiscountTemplate
end
