# encoding: utf-8
Encoding.default_external = "utf-8"

Haml::Filters::CodeRay.encoder_options = { :css => :class }
Haml::Template.options[:encoding] = "utf-8"

page "/en/mongoid/*", layout: "en/layouts/mongoid"
page "/en/origin/*", layout: "en/layouts/origin"
page "/en/moped/*", layout: "en/layouts/moped"
page "/ru/mongoid/*", layout: "ru/layouts/mongoid"
page "/ru/origin/*", layout: "ru/layouts/origin"
page "/ru/moped/*", layout: "ru/layouts/moped"

configure :build do
  activate :minify_css
end

ignore "/en/layouts/mongoid.haml"
ignore "/en/layouts/moped.haml"
ignore "/en/layouts/origin.haml"
ignore "/zh-cn/layouts/mongoid.haml"
ignore "/zh-cn/layouts/moped.haml"
ignore "/zh-cn/layouts/origin.haml"
ignore "/ru/layouts/mongoid.haml"
ignore "/ru/layouts/moped.haml"
ignore "/ru/layouts/origin.haml"

helpers do

  def header_class(section)
    request.path =~ /(docs|links)/i ? "basic" : section
  end
end
