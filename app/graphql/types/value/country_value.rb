# frozen_string_literal: true

module Types
  module Value
    class CountryValue < Types::Base::BaseScalar
      description <<~EOS
        A country represented by a string that comes form `Country.value`
      EOS

      def self.coerce_input(input, _context)
        unless AppSchema.new.country?(input)
          raise GraphQL::CoercionError, "#{input.inspect} is not a valid country"
        end

        input
      end

      def self.coerce_result(value, _context)
        value
      end
    end
  end
end
