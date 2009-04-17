# -*- coding: utf-8 -*-

require 'rubygems'
require 'sinatra'
require 'sinatra/rdiscount'

get "/hello" do
  @name = "RDiscount"
  rdiscount :hello, :layout => false
end

get "/" do
  @name = "RDiscount"
  rdiscount :hello2
end
