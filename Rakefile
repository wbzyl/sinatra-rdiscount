# -*- coding: utf-8 -*-

require 'rake'
require 'rake/testtask'
require "rake/clean"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "sinatra-rdiscount"
    s.summary = "An extension providing RDiscount templates for Sinatra applications."
    s.email = "matwb@univ.gda.pl"
    s.homepage = "http://github.com/wbzyl/sinatra-rdiscount"
    s.description = "An extension providing RDiscount templates for Sinatra applications."
    s.authors = ["Włodek Bzyl"]

    s.add_dependency 'erubis', '>=2.6.4'
    s.add_dependency 'rdiscount', '>=1.3.4'      
  end
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with:"
  puts "  sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

desc 'Install the package as a gem.'
task :install => [:clean, :build] do
  gem = Dir['pkg/*.gem'].last
  sh "sudo gem install --no-rdoc --no-ri --local #{gem}"
end

task :default => :test
