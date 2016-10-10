class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.integer :company_profile_id
      t.string :name
      t.integer :sort_order

      t.timestamps
    end
  end
end
