json.extract! userprofile, :id, :name, :dob, :cid_no, :email, :contact_no, :address, :users_id, :created_at, :updated_at
json.url userprofile_url(userprofile, format: :json)
