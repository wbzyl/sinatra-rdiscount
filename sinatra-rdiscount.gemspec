# -*- coding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-rdiscount"
  s.version = '0.0.6'
  s.date = '2009-03-31'
  
  s.summary = "RDiscount templates for Sinatra applications"
  s.email = "matwb@univ.gda.pl"
  s.homepage = "http://github.com/wbzyl/sinatra-rdiscount"
  s.description = "RDiscount templates for Sinatra applications"
  s.authors = ["Włodek Bzyl"]
  s.files = %w{.gitignore
               sinatra-rdiscount.gemspec
               Rakefile
               README.markdown
               LICENSE
               lib/sinatra/rdiscount.rb
               test/spec_sinatra_rdiscount.rb
               examples/app.rb
               examples/config.ru
               examples/views/layout2.rdiscount
               examples/views/hello2.rdiscount
               examples/views/hello.rdiscount
               examples/public/stylesheets/application.css}

  s.add_dependency 'sinatra', '>=0.9.1'
  s.add_dependency 'rdiscount', '>=1.3.4'
  s.add_dependency 'erubis', '>=2.6.4'  
  
  s.rubygems_version = '1.3.1'
end
