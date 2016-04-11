require 'csv'

ActiveRecord::Migration.say_with_time 'Abrasf DES-IF seeding service itens' do
  file = "#{File.expand_path('db/seeds', Abrasf::Desif::Engine.root)}/service_item.csv"
  CSV.foreach file, headers: true, col_sep: '|' do |row|
    Abrasf::Desif::ServiceItem.create!(row.to_hash)
  end
end
