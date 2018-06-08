json.extract! my_task, :id, :task_name, :valor, :created_at, :updated_at
json.url my_task_url(my_task, format: :json)
