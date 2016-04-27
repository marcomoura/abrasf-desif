# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodesController, type: :controller do
      routes { Engine.routes }

      describe 'GET #index' do
        before { create :tax_code }

        context 'HTML format' do
          before { get :index }

          it 'assigns all tax_codes as @tax_codes' do
            expect(assigns(:tax_codes)).to_not be_empty
          end
        end

        context 'respond to CSV format' do
          before { get :index, format: :csv }

          it { expect(response.content_type).to eq 'text/csv' }
        end
      end
    end
  end
end
