class CreateCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :company_profiles do |t|
      t.string :headquarters_country_code
      t.string :headquarters_state_code
      t.string :headquarters_city
      t.string :website
      t.string :twitter
      t.string :linkedin
      t.string :facebook
      t.string :summary

      t.timestamps
    end
  end
end
