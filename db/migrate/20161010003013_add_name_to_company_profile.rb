class AddNameToCompanyProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :name, :string
  end
end
