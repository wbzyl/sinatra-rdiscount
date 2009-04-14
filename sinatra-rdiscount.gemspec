# -*- coding: utf-8 -*-

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.name = 'sinatra-rdiscount'
  s.version = '0.0.2'
  s.date = '2009-03-31'

  s.description = "RDiscount templates for Sinatra applications"
  s.summary     = "RDiscount..."

  s.authors = ["Włodek Bzyl"]
  s.email = "matwb@univ.gda.pl"

  s.files = %w[
    LICENSE
    README.markdown
    Rakefile
    lib/sinatra/rdiscount.rb
    sinatra-rdiscount.gemspec
    test/spec_sinatra_rdiscount.rb
  ]
  s.require_paths = %w[lib]
  
  s.add_dependency 'rdiscount', '>= 1.3.4'

  s.has_rdoc = false
  s.homepage = "http://sinatra.rubyforge.org"

  s.rubyforge_project = 'sinatra-rdiscount'
  s.rubygems_version = '1.3.1'
end
