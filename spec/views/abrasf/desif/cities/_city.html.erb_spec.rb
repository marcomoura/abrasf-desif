# frozen_string_literal: true

RSpec.describe 'abrasf/desif/cities/_city', type: :view do
  let(:city) { double id: 1234, name: 'city', federative_unit: 'xy' }
  before do
    render partial: 'abrasf/desif/cities/city',
           locals: { city: city }
  end

  it { expect(rendered).to have_content '1234 city xy' }
end
