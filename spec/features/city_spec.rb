# frozen_string_literal: true

RSpec.describe 'City', type: :feature do
  before do
    Abrasf::Desif::City.create!(id: 101, name: 'hello', federative_unit: 'xx')
    Abrasf::Desif::City.create!(id: 202, name: 'world', federative_unit: 'yy')
    visit '/cities'
  end
  let(:result) { 'City Table Code Name State 101 hello xx 202 world yy' }

  it { expect(page).to have_content result }
end
