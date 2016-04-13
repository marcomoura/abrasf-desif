# frozen_string_literal: true

RSpec.describe 'abrasf/desif/service_items/index', type: :view do
  before do
    assign :service_items, [Abrasf::Desif::ServiceItem.new]
    stub_template 'abrasf/desif/tax_code/_service_item.html.erb': 'fake-partial'

    render
  end
  let(:result) { 'Service Item' }

  it { expect(rendered).to have_content result }
  it { expect(view).to render_template partial: '_service_item' }
end
