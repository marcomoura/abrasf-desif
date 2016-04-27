# frozen_string_literal: true

module Abrasf
  module Desif
    class TaxCodesController < ApplicationController
      before_action :set_tax_codes

      # GET /desif/tax_codes
      def index
        respond_to do |format|
          format.html
          format.csv do
            filename = "attachment; filename=\"#{t '.filename'}\""
            headers['Content-Disposition'] = filename
          end
        end
      end

      private

      def set_tax_codes
        @tax_codes = TaxCodeDecorator.wrap TaxCode.all
      end
    end
  end
end
