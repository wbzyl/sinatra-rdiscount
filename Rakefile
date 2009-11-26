require 'rake'
require 'rake/testtask'
require "rake/clean"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sinatra-rdiscount"
    gem.summary = "Sinatra extension providing RDiscount templates for Sinatra application."
    gem.email = "matwb@univ.gda.pl"
    gem.homepage = "http://github.com/wbzyl/sinatra-rdiscount"
    gem.description = gem.summary
    gem.authors = ["Wlodek Bzyl"]
    
    gem.add_runtime_dependency 'sinatra', '>= 0.10.1'
    gem.add_runtime_dependency 'erubis', '>=2.6.4'
    gem.add_runtime_dependency 'rdiscount', '>=1.3.4'      
    
    gem.add_development_dependency 'rack', '>=1.0.0'
    gem.add_development_dependency 'rack-test', '>=0.3.0'
    
    # gem is a Gem::Specification
    # refer to http://www.rubygems.org/read/chapter/20 for additional settings  
  end
  Jeweler::GemcutterTasks.new  
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with:"
  puts "  sudo gem install jeweler -s http://gemcutter.com"
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
