class AddClassificaitonandPublicCompanyToCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :classification, :string, null: false, default: "Private"
    add_column :company_profiles, :index_acquired_by_public_company, :string, null: false, default: "No"
  end
end
