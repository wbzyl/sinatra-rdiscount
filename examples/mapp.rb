require 'rubygems'
require 'sinatra/base'
require 'sinatra/rdiscount'

require 'rack'

class MApp < Sinatra::Base
  helpers Sinatra::RDiscount

  get '/' do
    rdiscount "## hello form modular app"
  end
end

Rack::Handler::Thin.run MApp.new, :Port => 4567
