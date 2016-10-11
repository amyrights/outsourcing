namespace :import do
	#environment is necessary to pull the rails models
	desc "Import company profiles from csv"
	task company_contacts: :environment do
		filename = File.join Rails.root, "company_contacts.csv"
		counter = 0
		CSV.foreach(filename, headers: true) do |row|
			#id, name, classification, index_acquired_by_public_company, headquarters_country_code, headquarters_state_code, headquarters_city, year_founded, summary, narrative, social_twitter, social_linkedin, social_facebook = row
			contact = Contact.new({
				company_profile_id: row["company_profile_id"],
				name: row["fname"],
				email: row["email"],
				title: row["title"]	
				})
			contact.id = row["id"]
			contact.save!
			counter +=1 if contact.persisted?
		end
		puts "Imported #{counter} contact"
	end
		
end