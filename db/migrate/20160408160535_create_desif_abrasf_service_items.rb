class CreateDesifAbrasfServiceItems < ActiveRecord::Migration
  def change
    create_table :desif_abrasf_service_items do |t|
      t.string :description, null: false
    end
  end
end
