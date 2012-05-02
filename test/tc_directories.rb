# 1.9 adds realpath to resolve symlinks; 1.8 doesn't
# have this method, so we add it so we get resolved symlinks
# and compatibility
unless File.respond_to? :realpath
  class File
    def self.realpath path
      return realpath(File.readlink(path)) if symlink?(path)
      path
    end
  end
end

require 'gli.rb'
require 'test/unit'
require 'h5bp'

include GLI

class TC_testGLI < Test::Unit::TestCase
  def setup
    @dirs = H5BP::Directories.new
    @built_dirs = ['publish', 'intermediate']
    delete_directories(@built_dirs)
  end

  def teardown
    delete_directories(@built_dirs)
  end

  def test_make_builds_directories
    @dirs.make()
    @built_dirs.each { |dir| assert_equal(true, File.exists?(dir)) }
  end

  private

  def delete_directories(dirs)
    dirs.each { |dir| `rm -rf #{dir}` if !File.exists?(dir) }
  end
end
