class CreateAbrasfDesifCities < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_cities do |t|
      t.string :name, limit: 50
      t.string :federative_unit, limit: 2
    end
  end
end
