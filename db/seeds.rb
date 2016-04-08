require 'csv'

ActiveRecord::Migration.say_with_time 'DesifAbrasf seeding service itens' do
  file = "#{File.expand_path('db/seeds', DesifAbrasf::Engine.root)}/service_item.csv"
  CSV.foreach file, headers: true, col_sep: '|' do |row|
    DesifAbrasf::ServiceItem.create!(row.to_hash)
  end
end
