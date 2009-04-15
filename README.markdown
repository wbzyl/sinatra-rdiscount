# RDiscount templates for Sinatra

**NOT ready** yet.


## Sinatra Extensions Doc

[Typo in doc](http://www.sinatrarb.com/extensions.html):

    require 'sinatra/base'
    require 'rack/utils'                # missed
      
    module Sinatra
      module HTMLEscapeHelper
        def h(text)
          Rake::Utils.escape_html(text) # should be Rack::Utils.escape_html(text)
        end
