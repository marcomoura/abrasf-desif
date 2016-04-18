# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe CityTaxCode, type: :model do
      it { is_expected.to belong_to :city }
      it { is_expected.to belong_to :tax_code }

      it { is_expected.to validate_presence_of :abrasf_desif_tax_code_id }
      it { is_expected.to validate_presence_of :abrasf_desif_city_id }
      it { is_expected.to validate_presence_of :aliquot }

      it do
        is_expected.to validate_numericality_of(:aliquot)
          .is_greater_than_or_equal_to(2).is_less_than_or_equal_to(5).allow_nil
      end

      it { is_expected.to validate_length_of(:city_tax_code).is_at_most 20 }

      context do
        before { create :city_tax_code }

        it do
          is_expected.to validate_uniqueness_of(:city_tax_code)
            .scoped_to(:abrasf_desif_city_id).case_insensitive
        end
      end
    end
  end
end
