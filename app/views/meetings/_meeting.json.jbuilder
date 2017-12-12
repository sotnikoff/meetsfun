json.extract! meeting, :id, :title, :description, :city_id, :user_id, :interest_id, :date_time_start, :date_time_finish, :address, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
