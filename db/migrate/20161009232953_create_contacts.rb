class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.integer :company_profile_id
      t.string :email
      t.string :title
      t.string :name
      t.string :linkedin
      t.string :twitter
      t.string :facebook
      t.string :google

      t.timestamps
    end
  end
end
