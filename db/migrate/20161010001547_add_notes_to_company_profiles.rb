class AddNotesToCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :note, :string
  end
end
