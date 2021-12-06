json.extract! question, :id, :name, :phonenumber, :email, :content, :created_at, :updated_at
json.url question_url(question, format: :json)
