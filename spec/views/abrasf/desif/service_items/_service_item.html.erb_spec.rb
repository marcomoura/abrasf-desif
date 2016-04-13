# frozen_string_literal: true

RSpec.describe 'abrasf/desif/service_items/_service_item', type: :view do
  let(:service) { double id: 1234, description: 'service' }
  before do
    render partial: 'abrasf/desif/service_items/service_item',
           locals: { service_item: service }
  end

  it { expect(rendered).to have_content '1234 service' }
end
