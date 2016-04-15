# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodesController, type: :controller do
      routes { Engine.routes }
      let(:tax_code) do
        service = ServiceItem.create! id: 171, description: 'hello'
        TaxCode.create! id: 171, description: 'hello', service_item: service
      end

      before { get :index }

      describe 'GET #index' do
        it 'assigns all tax_codes as @tax_codes' do
          expect(assigns(:tax_codes)).to eq([tax_code])
        end
      end
    end
  end
end
