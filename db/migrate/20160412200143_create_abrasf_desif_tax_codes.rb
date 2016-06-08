class CreateAbrasfDesifTaxCodes < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_tax_codes do |t|
      t.string :description, limit: 200
      t.references :abrasf_desif_service_item, foreign_key: true, index: true, null: false
    end
  end
end
