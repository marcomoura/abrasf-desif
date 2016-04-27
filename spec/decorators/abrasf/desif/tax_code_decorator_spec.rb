# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCodeDecorator do
      subject { described_class.new item }
      let(:item) { double(id: 1, description: 'test', service_item_id: 171) }

      context '#wrap' do
        it { expect(described_class.wrap([item])).to match_array subject }
      end

      context '.service_item_id' do
        it { expect(subject.service_item_id).to be_eql '0171' }
      end

      context '.id' do
        it { expect(subject.id).to be_eql '000000001' }
      end

      context '.id_mask' do
        it { expect(subject.id_mask).to be_eql '00.00.000-01' }
      end

      context '.to_csv' do
        let(:result) { %w(000000001 test 0171) }
        it { expect(subject.to_csv).to match_array result }
      end
    end
  end
end
