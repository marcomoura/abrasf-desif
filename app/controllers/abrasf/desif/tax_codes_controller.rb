# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCodesController < ActionController::Base
      # GET /desif/tax_codes
      def index
        @tax_codes = TaxCode.all
      end
    end
  end
end
