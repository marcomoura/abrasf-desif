# frozen_string_literal: true

RSpec.describe 'Service Item', type: :feature do
  before do
    Abrasf::Desif::ServiceItem.create!(id: 101, description: 'hello')
    Abrasf::Desif::ServiceItem.create!(id: 202, description: 'world')
    visit '/service_items'
  end
  let(:result) { '101 hello 202 world' }

  it { expect(page).to have_content result }
end
