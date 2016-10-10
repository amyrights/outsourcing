class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.integer :company_profile_id
      t.string :url

      t.timestamps
    end
  end
end
