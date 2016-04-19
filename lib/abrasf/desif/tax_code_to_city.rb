# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCodeToCity
      def self.create(opt)
        opt = { city_id: nil, since: Date.today, codes: TaxCode }.merge opt

        new(opt[:city_id], opt[:since], opt[:codes]).create
      end

      def initialize(city_id, since, default_codes)
        @city_id = city_id
        @since = since
        @default_codes = default_codes
      end

      def create
        codes { |code_id| CityTaxCode.create! attributes(code_id) }
      end

      private

      def attributes(code_id)
        {
          abrasf_desif_city_id: @city_id,
          abrasf_desif_tax_code_id: code_id,
          city_tax_code: code_id,
          since: @since
        }
      end

      def codes
        @default_codes.find_each { |code| yield code.id }
      end
    end
  end
end
