# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodesController, type: :routing do
      describe 'routing' do
        routes { Engine.routes }

        it do
          expect(get: tax_codes_path)
            .to route_to 'abrasf/desif/tax_codes#index'
        end
      end
    end
  end
end
