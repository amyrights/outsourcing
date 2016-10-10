class AddNarrativeToCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :narrative, :string
  end
end
