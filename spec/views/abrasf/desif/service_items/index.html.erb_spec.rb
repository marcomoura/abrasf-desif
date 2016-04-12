# frozen_string_literal: true

RSpec.describe 'abrasf/desif/service_items/index', type: :view do
  before do
    assign :service_items, [
      Abrasf::Desif::ServiceItem.create!(id: 101, description: 'hello'),
      Abrasf::Desif::ServiceItem.create!(id: 202, description: 'world')
    ]

    render
  end
  let(:result) { '101 hello 202 world' }

  it do
    expect(rendered).to have_content result
  end
end
