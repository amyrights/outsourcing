namespace :import do
	#environment is necessary to pull the rails models
	desc "Import company profiles from csv"
	task industry_lists: :environment do
		filename = File.join Rails.root, "industry_lists.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			#id, name, classification, index_acquired_by_public_company, headquarters_country_code, headquarters_state_code, headquarters_city, year_founded, summary, narrative, social_twitter, social_linkedin, social_facebook = row
			industry = IndustryList.new({
				name: row["name"], parent_id: row["parent_id"], pics: row["pics"], url_slug: row["url_slug"], tree_print: row["tree_print"], 
				search_visible: row["search_visible"], child_count: row["child_count"], index_hierarchy_data: row["index_hierarchy_data"]
				})
			industry.id = row["id"]
			industry.save!
			counter +=1 if industry.persisted?
		end
		puts "Imported #{counter} industry"
	end
		
end
