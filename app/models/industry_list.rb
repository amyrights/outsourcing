class IndustryList < ApplicationRecord
has_many :company_profiles, through :company_industry
has_many :company_industries
has_many :children, class_name: "industry_list", foreign_key: "parent_id"
belongs_to :parent, class_name "industry_list"
end
