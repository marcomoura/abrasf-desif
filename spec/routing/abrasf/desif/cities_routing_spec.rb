# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe CitiesController, type: :routing do
      describe 'routing' do
        routes { Engine.routes }

        it do
          expect(get: cities_path)
            .to route_to 'abrasf/desif/cities#index'
        end
      end
    end
  end
end
