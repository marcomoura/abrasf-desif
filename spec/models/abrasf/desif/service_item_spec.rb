# frozen_string_literal: true

module Abrasf
  module Desif
    RSpec.describe ServiceItem, type: :model do
      it { is_expected.to validate_presence_of :id }
      it { is_expected.to validate_presence_of :description }
    end
  end
end
