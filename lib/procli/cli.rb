require "thor"
 
module Procli
	class Cli < Thor
    desc "hello NAME", "say hello to NAME"
    def hello(name)
      puts "Hello #{name}"
    end
	end
end
