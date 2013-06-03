# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "yard-restful"
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Konstantin Rafalsky"]
  s.date = "2012-10-24"
  s.description = "A customized plugin for Yardoc that produces API documentation for Restful web services"
  s.email = ""
  s.extra_rdoc_files = [
    "README.markdown",
    "VERSION"
  ]
  s.files = [
    "Rakefile",
    "lib/yard-restful.rb",
    "lib/yard-restful/code_objects/api_object.rb",
    "lib/yard-restful/code_objects/namespace_object.rb",
    "lib/yard-restful/code_objects/resource_object.rb",
    "lib/yard-restful/handlers/rest_class_handler.rb",
    "lib/yard-restful/handlers/rest_method_handler.rb",
    "lib/yard-restful/html_blocks_helper.rb",
    "lib/yard-restful/rest_filters.rb",
    "lib/yard-restful/tags.rb",
    "templates/default/resource/html/fields_list.erb",
    "templates/default/resource/html/header.erb",
    "templates/default/resource/html/object_details.erb",
    "templates/default/resource/html/resource_details.erb",
    "templates/default/resource/html/setup.rb",
    "templates/default/docstring/html/setup.rb",
    "templates/default/docstring/html/text.erb",
    "templates/default/fulldoc/html/css/rest_custom.css",
    "templates/default/fulldoc/html/frames.erb",
    "templates/default/fulldoc/html/full_list_object.erb",
    "templates/default/fulldoc/html/full_list_resource.erb",
    "templates/default/fulldoc/html/js/rest_plugin.js",
    "templates/default/fulldoc/html/setup.rb",
    "templates/default/layout/html/footer.erb",
    "templates/default/layout/html/index.erb",
    "templates/default/layout/html/layout.erb",
    "templates/default/layout/html/setup.rb"
  ]
  s.homepage = "https://github.com/kraft001/yard-restful"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Yardoc plugin for Restful web services"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<yard>, ["~> 0.8.3"])
    else
      s.add_dependency(%q<yard>, ["~> 0.8.3"])
    end
  else
    s.add_dependency(%q<yard>, ["~> 0.8.3"])
  end
end