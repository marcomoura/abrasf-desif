# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCode < ActiveRecord::Base
      belongs_to :service_item, foreign_key: :abrasf_desif_service_item_id

      alias_attribute :service_item_id, :abrasf_desif_service_item_id

      validates_presence_of :id, :abrasf_desif_service_item_id
      validates :description,
                presence: true,
                length: { maximum: 200, allow_blank: true }
    end
  end
end
