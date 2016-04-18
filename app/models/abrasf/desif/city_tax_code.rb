# frozen_string_literal: true

module Abrasf
  module Desif
    class CityTaxCode < ActiveRecord::Base
      belongs_to :tax_code, foreign_key: :abrasf_desif_tax_code_id
      belongs_to :city, foreign_key: :abrasf_desif_city_id

      validates_presence_of :abrasf_desif_tax_code_id, :abrasf_desif_city_id

      validates :city_tax_code,
                presence: true,
                length: { maximum: 20, allow_blank: true },
                uniqueness: { scope: :abrasf_desif_city_id,
                              case_sensitive: false,
                              allow_blank: true }
      validates :aliquot,
                presence: true,
                numericality: { greater_than_or_equal_to: 2,
                                less_than_or_equal_to: 5,
                                allow_nil: true }
    end
  end
end
