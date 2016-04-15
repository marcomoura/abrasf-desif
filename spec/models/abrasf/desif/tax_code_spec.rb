# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe TaxCode, type: :model do
      it { is_expected.to belong_to :service_item }

      it { is_expected.to validate_presence_of :id }
      it { is_expected.to validate_presence_of :description }
      it { is_expected.to validate_length_of(:description).is_at_most 200 }
    end
  end
end
