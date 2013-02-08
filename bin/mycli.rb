#!/usr/bin/env ruby
# resolve bin path, ignoring symlinks
require "pathname"
bin_file = Pathname.new(__FILE__).realpath

# add self to libpath
$:.unshift File.expand_path("../../lib", bin_file)


require "nm/check"



class MyCLI
 
#com = Command.new
chk = Check.new

chk.start(ARGV)



end #class
