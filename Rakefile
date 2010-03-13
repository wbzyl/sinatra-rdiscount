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

    gem.add_runtime_dependency 'sinatra', '~>0.9'
    gem.add_runtime_dependency 'erubis', '>=2.6.5'
    gem.add_runtime_dependency 'rdiscount', '>=1.5.8'
    
    gem.add_development_dependency 'rack', '>=1.1.0'
    gem.add_development_dependency 'rack-test', '>=0.5.3'
  end
  Jeweler::GemcutterTasks.new  
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with:"
  puts "  sudo gem install jeweler"
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end
