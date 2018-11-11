json.extract! employee, :id, :firstname, :lastname, :role_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
