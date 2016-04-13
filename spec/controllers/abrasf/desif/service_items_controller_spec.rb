# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe ServiceItemsController, type: :controller do
      routes { Engine.routes }
      let(:service_item) { ServiceItem.create! id: 171, description: 'hello' }

      describe 'GET #index' do
        before { get :index }

        it 'assigns all service_items as @service_items' do
          expect(assigns(:service_items)).to eq([service_item])
        end

        describe 'default format' do
          it { expect(response).to have_http_status 200 }
          it { expect(response.content_type).to eq 'text/html' }
          it { expect(response).to render_template :index }
        end

        describe 'CSV format' do
          before { get :index, format: :csv }

          it { expect(response).to have_http_status 200 }
          it { expect(response.content_type).to eq 'text/csv' }
        end
      end
    end
  end
end
