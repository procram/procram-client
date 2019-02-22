require "thor"
require "http"

module Procram
  module Cli
    class Tag < Thor
      option :limit, type: :numeric, aliases: :l
      desc "list [--limit N]", "List tags"
      def list()
        puts parent_options[:endpoint]
        puts HTTP.get(parent_options[:endpoint]).body.to_s
      rescue => e
        puts e
      end

      desc "create TAG_NAME", "Create tag with the provided name"
      def create(name)
        puts "Create tag: #{name}"
      end
    end
  end
end
