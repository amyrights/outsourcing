class CreateCompanyIndustries < ActiveRecord::Migration[5.0]
  def change
    create_table :company_industries do |t|
      t.integer :company_profile_id
      t.integer :industry_list_id
      t.integer :sort_order

      t.timestamps
    end
  end
end
