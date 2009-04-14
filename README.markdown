## Sinatra Extensions

[Typo](http://www.sinatrarb.com/extensions.html):

    require 'sinatra/base'
    require 'rack/utils'    # added 
      
    module Sinatra
      module HTMLEscapeHelper
        def h(text)
          Rake::Utils.escape_html(text) #<-- Rack::Utils.escape_html(text)
        end

