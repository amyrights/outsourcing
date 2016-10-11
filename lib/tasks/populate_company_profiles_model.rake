namespace :import do
	#environment is necessary to pull the rails models
	desc "Import company profiles from csv"
	task company_profiles: :environment do
		filename = File.join Rails.root, "company_profiles.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			#id, name, classification, index_acquired_by_public_company, headquarters_country_code, headquarters_state_code, headquarters_city, year_founded, summary, narrative, social_twitter, social_linkedin, social_facebook = row
			company_profile = CompanyProfile.new({name: row["name"], classification: row["classification"], 
				index_acquired_by_public_company: row["index_acquired_by_public_company"], 
				headquarters_country_code: row["headquarters_country_code"], headquarters_state_code: row["headquarters_state_code"], 
				headquarters_city: row["headquarters_city"], year_founded: row["year_founded"], summary: row["summary"], narrative: row["narrative"], 
				twitter: row["social_twitter"], linkedin: row["social_linkedin"], facebook: row["social_facebook"]})
			company_profile.id = row["id"]
			company_profile.save!
			counter +=1 if company_profile.persisted?
		end
		puts "Imported #{counter} companies"
	end
		
end
