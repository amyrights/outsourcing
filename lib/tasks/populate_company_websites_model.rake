namespace :import do
	#environment is necessary to pull the rails models
	desc "Import company profiles from csv"
	task websites: :environment do
		filename = File.join Rails.root, "company_websites.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			#id, name, classification, index_acquired_by_public_company, headquarters_country_code, headquarters_state_code, headquarters_city, year_founded, summary, narrative, social_twitter, social_linkedin, social_facebook = row
			website = Website.new({company_profile_id: row["company_profile_id"], url: row["url"]})
			#company_profile.id = row["id"]
			website.save!
			counter +=1 if website.persisted?
		end
		puts "Imported #{counter} website"
	end
		
end
