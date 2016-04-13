# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCode < ActiveRecord::Base
      belongs_to :service_item

      validates_presence_of :id
      validates :description,
                presence: true,
                length: { maximum: 200, allow_blank: true }
    end
  end
end
