# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-rdiscount}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["W\305\202odek Bzyl"]
  s.date = %q{2009-05-11}
  s.description = %q{An extension providing RDiscount templates for Sinatra applications.}
  s.email = %q{matwb@univ.gda.pl}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "examples/app.rb",
    "examples/config.ru",
    "examples/mapp.rb",
    "examples/public/stylesheets/application.css",
    "examples/views/hello.rdiscount",
    "examples/views/hello2.rdiscount",
    "examples/views/layout2.rdiscount",
    "lib/sinatra/rdiscount.rb",
    "test/sinatra_rdiscount_test.rb",
    "test/test_helper.rb",
    "test/views/hello.rdiscount",
    "test/views/layout2.rdiscount"
  ]
  s.homepage = %q{http://github.com/wbzyl/sinatra-rdiscount}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{An extension providing RDiscount templates for Sinatra applications.}
  s.test_files = [
    "test/test_helper.rb",
    "test/sinatra_rdiscount_test.rb",
    "examples/mapp.rb",
    "examples/app.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>, [">= 2.6.4"])
    else
      s.add_dependency(%q<erubis>, [">= 2.6.4"])
    end
  else
    s.add_dependency(%q<erubis>, [">= 2.6.4"])
  end
end
