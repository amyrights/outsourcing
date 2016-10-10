namespace :import do
	#environment is necessary to pull the rails models
	desc "Import company profiles from csv"
	task company_profiles: :environment do
		filename = File.join Rails.root, "company_profiles.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			p row
			p row["name"]
			company_profile = CompanyProfile.create(id: id, name: name, classification: classification, index_acquired_by_public_company: index_acquired_by_public_company, headquarters_country_code: headquarters_country_code, headquarters_state_code: headquarters_state_code, headquarters_city: headquarters_city, year_founded: year_founded, summary: summary, narrative: narrative, twitter: social_twitter, linkedin: social_linkedin, facebook: social_facebook)
			counter +=1 if user.persisted?
		end
		puts "Imported #{counter} companies"
	end
		
end
