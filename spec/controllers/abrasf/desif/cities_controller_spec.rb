# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe CitiesController, type: :controller do
      routes { Engine.routes }
      let(:service_item) do
        City.create! id: 1, name: 'hi', federative_unit: 'XX'
      end

      describe 'GET #index' do
        before { get :index }

        it 'assigns all service_items as @service_items' do
          expect(assigns(:cities)).to match_array service_item
        end

        describe 'default format' do
          it { expect(response).to have_http_status 200 }
          it { expect(response.content_type).to eq 'text/html' }
          it { expect(response).to render_template :index }
        end
      end
    end
  end
end
