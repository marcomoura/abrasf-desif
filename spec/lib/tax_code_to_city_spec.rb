# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodeToCity do
      let(:city) { create :city }
      before { create :tax_code }

      context '#create' do
        specify do
          expect { described_class.create city_id: city.id }
            .to change { CityTaxCode.count }.by 1
        end
      end

      context '.create' do
        subject { described_class.new city.id, Date.today, TaxCode }

        specify do
          expect { subject.create }.to change { CityTaxCode.count }.by 1
        end
      end
    end
  end
end
