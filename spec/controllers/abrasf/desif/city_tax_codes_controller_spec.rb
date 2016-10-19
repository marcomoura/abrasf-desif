# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe CityTaxCodesController, type: :controller do
      routes { Engine.routes }

      let(:valid_attributes) do
        { abrasf_desif_tax_code_id: create(:tax_code).id, since: Date.today,
          abrasf_desif_city_id: create(:city).id, city_tax_code: 'A23456' }
      end

      let(:invalid_attributes) { valid_attributes.merge city_tax_code: nil }

      describe 'GET #index' do
        let!(:city_tax_code) { FactoryGirl.create :city_tax_code }
        before { get :index }

        it 'assigns all city_tax_codes as @city_tax_codes' do
          expect(assigns(:city_tax_codes)).to match_array city_tax_code
        end
      end

      describe 'GET #show' do
        let(:city_tax_code) { CityTaxCode.create! valid_attributes }
        before { get :show, params: { id: city_tax_code.to_param } }

        it 'assigns the requested city_tax_code as @city_tax_code' do
          expect(assigns(:city_tax_code)).to eq city_tax_code
        end
      end

      describe 'GET #new' do
        it 'assigns a new city_tax_code as @city_tax_code' do
          get :new
          expect(assigns(:city_tax_code)).to be_a_new CityTaxCode
        end
      end

      describe 'GET #edit' do
        let(:city_tax_code) { CityTaxCode.create! valid_attributes }
        before { get :edit, params: { id: city_tax_code.to_param } }

        it 'assigns the requested city_tax_code as @city_tax_code' do
          expect(assigns(:city_tax_code)).to eq city_tax_code
        end
      end

      describe 'POST #create' do
        context 'with valid params' do
          it 'creates a new CityTaxCode' do
            expect { post :create, params: { city_tax_code: valid_attributes } }
              .to change(CityTaxCode, :count).by(1)
          end

          it 'assigns a newly created city_tax_code as @city_tax_code' do
            post :create, params: { city_tax_code: valid_attributes }
            expect(assigns(:city_tax_code)).to be_a CityTaxCode
            expect(assigns(:city_tax_code)).to be_persisted
          end

          it 'redirects to the created city_tax_code' do
            post :create, params: { city_tax_code: valid_attributes }
            expect(response).to redirect_to(CityTaxCode.last)
          end
        end

        context 'with invalid params' do
          before { post :create, params: { city_tax_code: invalid_attributes } }

          it 'assigns a newly but unsaved city_tax_code as @city_tax_code' do
            expect(assigns(:city_tax_code)).to be_a_new CityTaxCode
          end

          it "re-renders the 'new' template" do
            expect(response).to render_template 'new'
          end
        end
      end

      describe 'PUT #update' do
        let(:city_tax_code) { CityTaxCode.create! valid_attributes }
        before do
          put :update, params: { id: city_tax_code.to_param,
                                 city_tax_code: attr }
        end

        context 'with valid params' do
          let(:attr) { { city_tax_code: code } }
          let(:code) { 'B77777' }

          it 'updates the requested city_tax_code' do
            expect(city_tax_code.reload.city_tax_code).to be_eql code
          end

          it 'assigns the requested city_tax_code as @city_tax_code' do
            expect(assigns(:city_tax_code)).to eq city_tax_code
          end

          it 'redirects to the city_tax_code' do
            expect(response).to redirect_to city_tax_code
          end
        end

        context 'with invalid params' do
          let(:attr) { invalid_attributes }

          it 'assigns the city_tax_code as @city_tax_code' do
            expect(assigns(:city_tax_code)).to eq city_tax_code
          end

          it "re-renders the 'edit' template" do
            expect(response).to render_template 'edit'
          end
        end
      end

      describe 'DELETE #destroy' do
        it 'destroys the requested city_tax_code' do
          city_tax_code = CityTaxCode.create! valid_attributes
          expect { delete :destroy, params: { id: city_tax_code.to_param } }
            .to change(CityTaxCode, :count).by(-1)
        end

        it 'redirects to the city_tax_codes list' do
          city_tax_code = CityTaxCode.create! valid_attributes
          delete :destroy, params: { id: city_tax_code.to_param }
          expect(response).to redirect_to(city_tax_codes_url)
        end
      end
    end
  end
end
