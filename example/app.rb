require 'rubygems'
require 'sinatra'
require 'sinatra/rdiscount'

get "/hello" do
  h "1 < 2"     # => "1 &lt; 2"
end
