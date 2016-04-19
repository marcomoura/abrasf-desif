# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodeToCity do
      context '.create' do
        subject { described_class.new city.id, Date.today, TaxCode }
        let(:city) { create :city }
        before { create :tax_code }

        specify do
          expect { subject.create }.to change { CityTaxCode.count }.by 1
        end
      end
    end
  end
end
