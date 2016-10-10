class CompanyProfile < ApplicationRecord
	has_many :contacts
	has_many :keywords
	has_many :websites
	has_many :company_industries
	has_many :industry_lists, through: :company_industries
end
