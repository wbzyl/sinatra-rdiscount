# RDiscount Templates for Sinatra


## Views / Templates

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

renders *./views/index.rdiscount*.

If a layout named *layout.rdiscount* exists, it will be used each time
a template is rendered.

You can disable layouts by passing:

    :layout => false

For example

    get '/' do
      rdiscount :index, :layout => false
    end

You can set a different layout from the default with:

    get '/' do
      rdiscount :index, :layout => :application
    end

This renders *./views/index.rdiscount* template
within *./views/application.rdiscount* layout.


## Important Info

Layouts are **HTML**, not RDiscount, files with ERB 
insertions. Example:

    <!DOCTYPE html>
    <html>
      <head>
        <title><%= @title || "My Sinatra App" %></title>
      </head>
      <body>
        <%= yield %>
      </body>
    </html>

Templates are RDiscount files with changed embedded pattern.
The default pattern `'<% %>'` is replaced by `'{% %}'`.
Example:

    # Hello {%= @name %}

Such changes were necessary to avoid messing with
RDiscount engine which converts bare `&lt;` to `&amp;lt;`.

Also I think that there is no way with RDiscount to render
that line:

    <!DOCTYPE html>
