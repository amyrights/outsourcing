json.extract! contact, :id, :company_profile_id, :email, :title, :name, :linkedin, :twitter, :facebook, :google, :created_at, :updated_at
json.url contact_url(contact, format: :json)