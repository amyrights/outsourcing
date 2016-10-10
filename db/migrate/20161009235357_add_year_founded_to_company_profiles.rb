class AddYearFoundedToCompanyProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :company_profiles, :year_founded, :integer
  end
end
