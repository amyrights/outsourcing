class CreateIndustryLists < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_lists do |t|
      t.string :name
      t.string :parent_id
      t.integer :pics
      t.integer :url_slug
      t.string :tree_print
      t.string :search_visible
      t.integer :child_count
      t.string :index_hierarchy_data

      t.timestamps
    end
  end
end
