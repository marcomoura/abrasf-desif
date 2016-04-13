# frozen_string_literal: true

RSpec.describe 'abrasf/desif/tax_codes/index', type: :view do
  before do
    assign :tax_codes, [Abrasf::Desif::TaxCode.new]

    render
  end

  let(:result) { 'Tax Codes Code Description Subitem Service Item' }

  it { expect(rendered).to have_content result }
  it { expect(view).to render_template partial: '_tax_code' }
end
