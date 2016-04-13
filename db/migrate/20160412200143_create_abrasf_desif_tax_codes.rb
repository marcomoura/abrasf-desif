class CreateAbrasfDesifTaxCodes < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_tax_codes do |t|
      t.string :description, limit: 100
      t.references :service_item
    end
  end
end
