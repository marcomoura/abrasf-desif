# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe City, type: :model do
      it { is_expected.to validate_presence_of :id }
      it { is_expected.to validate_presence_of :name }
      it { is_expected.to validate_length_of(:name).is_at_most 50 }
      it { is_expected.to validate_presence_of :federative_unit }
      it { is_expected.to validate_length_of(:federative_unit).is_equal_to 2 }
    end
  end
end
