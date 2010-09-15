# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nozomi}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Price"]
  s.date = %q{2010-09-15}
  s.default_executable = %q{nozomi}
  s.description = %q{Opinionated Rails project templating: rspec, capybara, haml, sass, compass, etc}
  s.email = %q{joshcp@gmail.com}
  s.executables = ["nozomi"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown",
     "TODO"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "TODO",
     "VERSION",
     "bin/nozomi",
     "lib/rails3-template.rb"
  ]
  s.homepage = %q{http://github.com/joshprice/nozomi}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Get your rails projects going faster with Nozomi}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

