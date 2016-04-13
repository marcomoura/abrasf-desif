require 'csv'

ActiveRecord::Migration.say_with_time 'seeding Service Itens Abrasf DES-IF...' do
  file = "#{File.expand_path('db/seeds', Abrasf::Desif::Engine.root)}/service_items.csv"
  CSV.foreach file, headers: true do |row|
    Abrasf::Desif::ServiceItem.create!(row.to_hash)
  end
end

ActiveRecord::Migration.say_with_time 'seeding Tax Codes Abrasf DES-IF...' do
  file = "#{File.expand_path('db/seeds', Abrasf::Desif::Engine.root)}/tax_codes.csv"
  CSV.foreach file, headers: true do |row|
    Abrasf::Desif::TaxCode.create!(row.to_hash)
  end
end
