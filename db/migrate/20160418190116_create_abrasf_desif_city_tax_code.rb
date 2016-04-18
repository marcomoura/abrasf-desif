class CreateAbrasfDesifCityTaxCode < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_city_tax_codes do |t|
      t.references :abrasf_desif_city, index: true, foreign_key: true, null: false
      t.references :abrasf_desif_tax_code, index: true, foreign_key: true, null: false
      t.string :city_tax_code, limit: 20, index: true, null: false
      t.decimal :aliquot, precision: 4, scale: 2, default: 5, null: false
      t.date :since, null: false
      t.date :expiry

      t.timestamps null: false

      t.index [:abrasf_desif_city_id, :city_tax_code], unique: true,
        name: :abrasf_desif_city_tax_codes_city_id_and_city_tax_code
    end
  end
end
