require 'sinatra/base'
require 'rack/utils'

module Sinatra
  module HTMLEscapeHelper
    def h(text)
      Rack::Utils.escape_html(text)
    end
  end

  helpers HTMLEscapeHelper
end

module Sinatra
  module RDiscountTemplate

    def rdiscount(template, options={}, locals={})
      require 'rdiscount' unless defined? ::RDiscount
      render :rdiscount, template, options, locals
    end
    
  private
    
    def render_rdiscount(template, data, options, locals, &block)
      original_out_buf = @_out_buf
      data = data.call if data.kind_of? Proc
      instance = ::ERB.new(data, nil, nil, '@_out_buf')
      locals_assigns = locals.to_a.collect { |k,v| "#{k} = locals[:#{k}]" }

      src = "#{locals_assigns.join("\n")}\n#{instance.src}"
      eval src, binding, '(__ERB__)', locals_assigns.length + 1
      @_out_buf, result = original_out_buf, @_out_buf
      result
    end

  end

  helpers RDiscountTemplate
end
