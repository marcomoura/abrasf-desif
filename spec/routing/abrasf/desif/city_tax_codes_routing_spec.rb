# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe CityTaxCodesController, type: :routing do
      describe 'routing' do
        routes { Engine.routes }

        it do
          expect(get: 'city_tax_codes')
            .to route_to 'abrasf/desif/city_tax_codes#index'
        end

        it do
          expect(get: 'city_tax_codes/new')
            .to route_to 'abrasf/desif/city_tax_codes#new'
        end

        it do
          expect(get: 'city_tax_codes/1')
            .to route_to 'abrasf/desif/city_tax_codes#show', id: '1'
        end

        it do
          expect(get: 'city_tax_codes/1/edit')
            .to route_to 'abrasf/desif/city_tax_codes#edit', id: '1'
        end

        it do
          expect(post: 'city_tax_codes')
            .to route_to 'abrasf/desif/city_tax_codes#create'
        end

        it do
          expect(put: 'city_tax_codes/1')
            .to route_to 'abrasf/desif/city_tax_codes#update', id: '1'
        end

        it do
          expect(patch: 'city_tax_codes/1')
            .to route_to 'abrasf/desif/city_tax_codes#update', id: '1'
        end

        it do
          expect(delete: 'city_tax_codes/1')
            .to route_to 'abrasf/desif/city_tax_codes#destroy', id: '1'
        end
      end
    end
  end
end
