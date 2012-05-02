# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'h5bp'
  s.version = H5BP::VERSION
  s.author = ['Kushal Pisavadia']
  s.email = 'kushi.p@gmail.com'
  s.homepage = 'http://html5boilerplate.com/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A Ruby build tool primarily for use with HTML5 Boilerplate.'
  s.files = %w(bin/h5bp lib/h5bp.rb lib/directories.rb  lib/version.rb)
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','h5bp.rdoc']
  s.rdoc_options << '--title' << 'h5bp' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'h5bp'

  s.add_development_dependency('aruba', '~> 0.4.11')
  s.add_development_dependency('cucumber', '~> 1.1.9')
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')

  s.add_runtime_dependency('gli')
end
