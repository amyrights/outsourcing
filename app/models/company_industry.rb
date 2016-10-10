class CompanyIndustry < ApplicationRecord
	belongs_to :industry_list
	belongs_to :company_profile
end
