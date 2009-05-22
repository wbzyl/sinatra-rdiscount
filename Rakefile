# -*- coding: utf-8 -*-

require 'rake'
require 'rake/testtask'
require "rake/clean"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sinatra-rdiscount"
    gem.summary = "An extension providing RDiscount templates for Sinatra applicationgem."
    gem.email = "matwb@univ.gda.pl"
    gem.homepage = "http://github.com/wbzyl/sinatra-rdiscount"
    gem.description = "An extension providing RDiscount templates for Sinatra applicationgem."
    gem.authors = ["Włodek Bzyl"]
    
    gem.add_runtime_dependency 'sinatra', '>= 0.9.2'
    gem.add_runtime_dependency 'erubis', '>=2.6.4'
    gem.add_runtime_dependency 'rdiscount', '>=1.3.4'      
    
    gem.add_development_dependency 'rack', '>=1.0.0'
    gem.add_development_dependency 'rack-test', '>=0.3.0'
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
