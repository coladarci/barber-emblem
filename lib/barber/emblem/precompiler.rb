module Barber
  module Emblem
    class Precompiler < Barber::Precompiler
      def sources
        [precompiler, handlebars, emblem]
      end

      def emblem
        @emblem = File.new(File.expand_path("../../javascripts/emblem.js", __FILE__))
      end

      def handlebars
        @handlebars = File.new(File.expand_path("../../javascripts/handlebars.js", __FILE__))
      end

      def precompiler
        @emblem = File.new(File.expand_path("../../javascripts/emblem_precompiler.js", __FILE__))
      end
    end
  end
end

