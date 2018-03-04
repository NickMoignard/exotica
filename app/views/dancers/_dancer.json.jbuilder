<<<<<<< HEAD
json.extract! dancer, :id, :stage_name, :full_name, :account, :created_at, :updated_at
=======
json.extract! dancer, :id, :full_name, :fake_name, :account, :created_at, :updated_at
>>>>>>> 6ccd12dee487bbd0f1a6d5ac2171c66784ff9c66
json.url dancer_url(dancer, format: :json)
