class CreateAbrasfDesifCityTaxCodes < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_city_tax_codes do |t|
      t.references :city, index: true, foreign_key: true, null: false
      t.references :tax_code, index: true, foreign_key: true, null: false
      t.string :city_tax_code, limit: 20, index: true, null: false
      t.decimal :aliquot, precision: 1, scale: 2, default: 5, null: false
      t.date :since, null: false, default: { expr: "('now'::text)::date" }
      t.date :expiry

      t.timestamps null: false

      t.index [:city_id, :city_tax_code], unique: true
    end
  end
end
