Gem::Specification.new do |s|
  s.name = %q{haiku-ims-lti}
  s.version = "1.1.10"

  s.add_dependency 'builder'
  s.add_dependency 'oauth', '~> 0.4.2'

  s.add_development_dependency 'rspec', '2.0.0'
  s.add_development_dependency 'linecache', '0.43'
  s.add_development_dependency 'ruby-debug', '0.10.4'

  s.authors = ["Instructure", "Haiku Learning"]
  s.date = %q{2012-09-05}
  s.extra_rdoc_files = %W(LICENSE)
  s.license = 'MIT'
  s.files = Dir["{lib}/**/*"] + ["LICENSE", "README.md", "Changelog"]
  s.homepage = %q{http://github.com/instructure/ims-lti}
  s.require_paths = %W(lib)
  s.summary = %q{Ruby library for creating IMS LTI tool providers and consumers}

end
