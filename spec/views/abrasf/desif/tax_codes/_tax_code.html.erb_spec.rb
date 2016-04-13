# frozen_string_literal: true

RSpec.describe 'abrasf/desif/tax_codes/_tax_code', type: :view do
  before do
    tax_code = double(id: 1234, description: 'hi', service_item_id: 171)

    render partial: 'abrasf/desif/tax_codes/tax_code',
           locals: { tax_code: tax_code }
  end

  it { expect(rendered).to have_content '1234 hi 171' }
end
