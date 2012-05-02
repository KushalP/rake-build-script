module H5BP
  class Directories
    def initialize
    end

    def make
      puts "Creating directories..."
      dirs = ['intermediate', 'publish']
      dirs.each { |dir|
        Dir::mkdir(dir) unless File.exists?(dir)
      }
    end
  end
end
