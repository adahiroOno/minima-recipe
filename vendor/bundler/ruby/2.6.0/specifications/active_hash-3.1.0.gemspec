# -*- encoding: utf-8 -*-
# stub: active_hash 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "active_hash".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Dean".freeze, "Mike Dalessio".freeze, "Corey Innis".freeze, "Peter Jaros".freeze, "Brandon Keene".freeze, "Brian Takita".freeze, "Pat Nakajima".freeze, "John Pignata".freeze, "Michael Schubert".freeze, "Jeremy Weiskotten".freeze, "Ryan Garver".freeze, "Tom Stuart".freeze, "Joel Chippindale".freeze, "Kevin Olsen".freeze, "Vladimir Andrijevik".freeze, "Adam Anderson".freeze, "Keenan Brock".freeze, "Desmond Bowe".freeze, "Matthew O'Riordan".freeze, "Brett Richardson".freeze, "Rachel Heaton".freeze, "Keisuke Izumiya".freeze]
  s.date = "2020-01-15"
  s.description = "Includes the ability to specify data using hashes, yml files or JSON files".freeze
  s.email = "jeff@zilkey.com".freeze
  s.homepage = "http://github.com/zilkey/active_hash".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "An ActiveRecord-like model that uses a hash or file as a datasource".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.0.0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 5.0.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
