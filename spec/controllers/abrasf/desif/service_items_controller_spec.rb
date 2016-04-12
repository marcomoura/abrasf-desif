# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe ServiceItemsController, type: :controller do
      routes { Abrasf::Desif::Engine.routes }
      let(:service_item) { ServiceItem.create! id: 171, description: 'hello' }

      describe 'GET #index' do
        before { get :index }

        it 'assigns all service_items as @service_items' do
          expect(assigns(:service_items)).to eq([service_item])
        end
      end
    end
  end
end
