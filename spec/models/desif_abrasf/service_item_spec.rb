# frozen_string_literal: true

module DesifAbrasf
  RSpec.describe ServiceItem, type: :model do
    it { is_expected.to validate_presence_of(:id) }
    it { is_expected.to validate_presence_of(:description) }
  end
end
