# Sinatra RDiscount Extension for Sinatra v1.0

**Important:** work in progress.

The *sinatra-rdiscount* extension provides `rdiscount` helper method
for rendering RDiscount templates.

To install it, run: 

    sudo gem install wbzyl-sinatra-rdiscount -s http://gems.github.com

To test it, create a simple Sinatra application:

    # app.rb
    require 'rubygems'
    require 'sinatra'
      
    gem 'wbzyl-sinatra-rdiscount', '>=0.1.4'
    require 'sinatra/rdiscount'
    
    get "/" do
      rdiscount "# Hello RDiscount"
    end

and run it with:

    ruby app.rb

The result could be seen at *http://localhost:4567*.

Another example could be find in the *examples* directory. Run it with:

    rackup -p 4567 config.ru


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
