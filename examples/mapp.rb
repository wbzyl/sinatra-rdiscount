require 'rubygems'

require 'rack'
require 'sinatra/base'

gem 'wbzyl-sinatra-rdiscount', '>=0.1.2'
require 'sinatra/rdiscount'

class MApp < Sinatra::Base
  helpers Sinatra::RDiscount

  get '/?' do
    rdiscount "## hello form modular app"
  end
end

Rack::Handler::Thin.run MApp.new, :Port => 4567
