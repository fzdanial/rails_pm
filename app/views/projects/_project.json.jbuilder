json.extract! project, :id, :name, :task, :remark, :status, :startdate, :enddate, :created_at, :updated_at
json.url project_url(project, format: :json)
