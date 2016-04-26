# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodesController, type: :controller do
      routes { Engine.routes }

      describe 'GET #index' do
        before do
          create :tax_code
          get :index
        end

        it 'assigns all tax_codes as @tax_codes' do
          expect(assigns(:tax_codes)).to_not be_empty
        end
      end
    end
  end
end
