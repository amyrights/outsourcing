class AddCpidToCompanyProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :cpid, :integer
  end
end
