require 'rubygems'
require 'sinatra'

require 'sinatra/rdiscount'

get "/?" do
  @name = "RDiscount"
  rdiscount :hello, :layout => false
end

get "/2" do
  @name = "RDiscount"
  rdiscount :hello2, :layout => :layout2
end
