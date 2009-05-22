# Extension providing RDiscount templates for Sinatra apps

The *sinatra-rdiscount* gem is an extension for Sinatra
implemented as a gem.
It provides a request-helper method named `rdiscount`
for rendering RDiscount templates.

To use this extension, first install *sinatra-rdiscount* gem:

    sudo gem install wbzyl-sinatra-rdiscount -s http://gems.github.com

Then create a simple Sinatra application *app.rb*:

    require 'rubygems'
    require 'sinatra'
      
    gem 'wbzyl-sinatra-rdiscount', '>=0.1.2'
    require 'sinatra/rdiscount'
    
    get "/" do
      rdiscount "# Hello Rdiscount"
    end

and run the above code:

    ruby app.rb

The result could be seen here: *http://localhost:4567*.

Another example could be find in the *examples* directory.   
Run it with:

    rackup -p 4567 config.ru

Now, visit the following url *http://localhost:4567/hello2*
and contemplate the sheer beauty of the rendered code.


## Template Languages (*update to The Sinatra Book*) 

One important thing to remember is that you always have to reference
templates and layouts with **symbols**, even if they’re in a subdirectory,
for example `:'subdir/template'`.
Rendering methods will render any strings passed to them directly.


### RDiscount Templates

The following gems are required to render RDiscount templates: 
*rdiscount*, *erubis*.

This helper method:

    get '/' do
      rdiscount :index
    end

renders template *./views/index.rdiscount*.

If a layout named *layout.rdiscount* exists, it will be used each time
a template is rendered.

You can disable layouts by passing `:layout => false` 
to *rdiscount* helper. For example

    get '/' do
      rdiscount :index, :layout => false
    end

You can set a different layout from the default one with:

    get '/' do
      rdiscount :index, :layout => :application
    end

This renders *./views/index.rdiscount* template
within *./views/application.rdiscount* layout.


## Important Info

Layouts are **RHTML** — not RDiscount — files. 
Layout example:

    <!DOCTYPE html>
    <html>
      <head>
        <title><%= @title || "My Sinatra App" %></title>
      </head>
      <body>
        <%= yield %>
      </body>
    </html>

Templates are **Markdown** files with ERB insertions delimited
by `'{% %}'`. Template example:

    # Hello {%= @name %}

Such a change in embedded code pattern was necessary,
to avoid messing with RDiscount engine, 
which converts bare `&lt;` to `&amp;lt;`.
Also I think that there is no way for RDiscount renderer
to generate that line:

    <!DOCTYPE html>
