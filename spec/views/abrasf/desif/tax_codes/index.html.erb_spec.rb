# frozen_string_literal: true

RSpec.describe 'abrasf/desif/tax_codes/index', type: :view do
  let(:tax_code) do
    double id_mask: 1234, description: 'hi', service_item_id: 171
  end

  before do
    assign :tax_codes, [tax_code]
    stub_template "abrasf/desif/tax_codes/index/_tax_code.html.erb" => "<br/>"

    render
  end

  let(:result) { 'Code Description Subitem Service Item' }

  it { expect(rendered).to have_content result }
  it { expect(rendered).to have_link 'Download CSV' }
  it { expect(view).to render_template partial: '_tax_code' }
end
