class CompanyProfile < ApplicationRecord
	has_many :contacts, dependent: :destroy
	has_many :keywords, dependent: :destroy
	has_many :websites, dependent: :destroy
	has_many :company_industries, dependent: :destroy
	has_many :industry_lists, through: :company_industries
	accepts_nested_attributes_for :contacts
	accepts_nested_attributes_for :keywords
	accepts_nested_attributes_for :websites
	accepts_nested_attributes_for :company_industries
end
