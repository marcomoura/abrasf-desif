# frozen_string_literal: true

FactoryGirl.define do
  factory :city_tax_code, class: Abrasf::Desif::CityTaxCode do
    city
    tax_code
    city_tax_code 'A1234'
    since Date.today
  end
end
