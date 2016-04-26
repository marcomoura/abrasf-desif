# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCodeDecorator < SimpleDelegator

      def self.wrap(collection)
        collection.map { |obj| new obj }
      end

      def service_item_id
        sprintf '%04d', super
      end

      def id
        sprintf '%09d', super
      end

      def id_mask
        id.match(/^(\d{2})(\d{2})(\d{3})(\d{2})$/)
        "#{$1}.#{$2}.#{$3}-#{$4}"
      end

      def to_csv
        [id, description, service_item_id]
      end
    end
  end
end
