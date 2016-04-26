# frozen_string_literal: true

RSpec.describe 'City Tax codes', type: :feature do
  context 'listing' do
    before do
      create :city_tax_code
      visit '/city_tax_codes'
    end

    let(:result) do
        'City IBGE Tax code City tax code Aliquot Since Expiry '\
        '1200013 10200001 A1234 5.0 2016/04'\
    end

    it { expect(page).to have_content result }
    it { expect(page).to have_link 'Edit' }
    it { expect(page).to have_link 'Destroy' }
    it { expect(page).to have_link 'New City tax code' }
  end

  context 'new' do
    before do
      visit '/city_tax_codes'
      click_link 'New'

      fill_in 'City tax code', with: '1234'
      fill_in 'Tax code', with: create(:tax_code).id
      fill_in 'City', with: create(:city).id
      fill_in 'Since', with: Date.today

      click_button 'Create'
    end

    let(:result) { 'City tax code was successfully created.' }

    it { expect(page).to have_content result }
  end

  context 'update' do
    before do
      create :city_tax_code
      visit '/city_tax_codes'
      click_link 'Edit'
      click_button 'Update'
    end

    let(:result) { 'City tax code was successfully updated.' }

    it { expect(page).to have_content result }
  end

  context 'destroy' do
    before do
      create :city_tax_code
      visit '/city_tax_codes'
      click_link 'Destroy'
    end

    let(:result) { 'City tax code was successfully destroyed.' }

    it { expect(page).to have_content result }
  end
end
