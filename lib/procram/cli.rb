require "thor"

require "procram/cli/tag"

module Procram
  module Cli
    class Main < Thor
      class_option :endpoint, type: :string, aliases: :e,
        default: ENV['PROCRAM_API_URL'] || 'https://api.procram.org/'

      desc "hello NAME", "say hello to NAME"
      def hello(name)
        puts options[:endpoint]
        puts "Hello #{name}"
      end

      desc "tag SUBCOMMAND ...ARGS", "manage tags"
      subcommand "tag", Tag
    end
  end
end
