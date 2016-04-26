# frozen_string_literal: true

RSpec.describe 'Tax codes', type: :feature do
  before do
    create :tax_code
    visit '/tax_codes'
  end
  let(:result) do
    'Tax Codes Download CSV ' \
    'Code Description Subitem Service Item ' \
    '01.02.000-01 Programação 1020'
  end

  it { expect(page).to have_content result }
end
