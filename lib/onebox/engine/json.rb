# frozen_string_literal: true

module Onebox
  module Engine
    module JSON
      private

      def raw
        @raw ||= ::MultiJson.load(URI.parse(url).open(read_timeout: timeout))
      end
    end
  end
end
