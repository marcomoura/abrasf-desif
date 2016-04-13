# frozen_string_literal: true

RSpec.describe 'Tax codes', type: :feature do
  before do
    service = Abrasf::Desif::ServiceItem.create! id: 101, description: 'hello'
    Abrasf::Desif::TaxCode.create! id: 999_999_999,
                                   description: 'tax code',
                                   service_item: service

    visit '/tax_codes'
  end
  let(:result) do
    'Tax Codes Code Description Subitem Service Item 999999999 tax code 101'
  end

  it { expect(page).to have_content result }
end
