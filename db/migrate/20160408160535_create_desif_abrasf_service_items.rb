class CreateDesifAbrasfServiceItems < ActiveRecord::Migration
  def change
    create_table :abrasf_desif_service_items do |t|
      t.string :description, null: false
    end
  end
end
