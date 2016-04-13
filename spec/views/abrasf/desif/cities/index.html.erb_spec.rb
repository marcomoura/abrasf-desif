# frozen_string_literal: true

RSpec.describe 'abrasf/desif/cities/index', type: :view do
  before do
    assign :cities, [Abrasf::Desif::City.new]

    render
  end
  let(:result) { 'City Table' }

  it { expect(rendered).to have_content result }
  it { expect(view).to render_template partial: '_city' }
end
