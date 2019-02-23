require "http"

module Procram
  module Api
    class Tag
      include Procram::Http

      def list(option={})
        get('/tags')
      end

      def create(name)
        puts "Create tag: #{name}"
      end
    end
  end
end
