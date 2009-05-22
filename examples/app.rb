require 'rubygems'
require 'sinatra'

gem 'wbzyl-sinatra-rdiscount', '>=0.1.2'
require 'sinatra/rdiscount'

get "/hello" do
  @name = "RDiscount"
  rdiscount :hello, :layout => false
end

get "/hello2" do
  @name = "RDiscount"
  rdiscount :hello2, :layout => :layout2
end
