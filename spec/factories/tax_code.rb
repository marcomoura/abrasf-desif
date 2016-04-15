# frozen_string_literal: true

FactoryGirl.define do
  factory :tax_code, class: Abrasf::Desif::TaxCode do
    id 10_200_001
    description 'Programação'
    service_item
  end
end
