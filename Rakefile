require 'rubygems'

require 'cucumber'
require 'cucumber/rake/task'
require 'rake/clean'
require 'rake/testtask'
require 'rubygems/package_task'
require 'rdoc/task'

RDoc::Task.new do |rd|
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rd.title = 'H5BP'
end

spec = eval(File.read('h5bp.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*.rb']
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => [:test, :features]
