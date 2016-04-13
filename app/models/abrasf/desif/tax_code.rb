# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCode < ActiveRecord::Base
      belongs_to :service_item

      validates_presence_of :id, :description
    end
  end
end
