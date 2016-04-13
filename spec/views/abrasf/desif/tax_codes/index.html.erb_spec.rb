# frozen_string_literal: true

RSpec.describe 'abrasf/desif/tax_codes/index', type: :view do
  before do
    assign :tax_codes, [Abrasf::Desif::TaxCode.new]
    stub_template 'abrasf/desif/tax_code/_tax_code.html.erb': 'fake-partial'

    render
  end

  let(:result) { 'Tax Codes Code Description Subitem Service Item' }

  it { expect(rendered).to have_content result }
  it { expect(view).to render_template partial: '_tax_code' }
end
