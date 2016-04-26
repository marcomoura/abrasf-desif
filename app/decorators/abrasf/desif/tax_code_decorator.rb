# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCodeDecorator < SimpleDelegator
      def self.wrap(collection)
        collection.map { |obj| new obj }
      end

      def service_item_id
        format '%04d', super
      end

      def id
        format '%09d', super
      end

      def id_mask
        "#{id[0..1]}.#{id[2..3]}.#{id[4..6]}-#{id[7..8]}"
      end

      def to_csv
        [id, description, service_item_id]
      end
    end
  end
end
