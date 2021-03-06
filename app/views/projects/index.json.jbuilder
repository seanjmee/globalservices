json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :client_id, :project_type, :primary_location, :license_type, :complexity_score, :project_description, :budget_days, :expense_policy, :project_start, :project_end, :vendors, :products, :services, :estimated_server_count, :estimated_desktop_count, :account_manager, :project_manager, :technical_lead, :client_sponsor, :client_project_manager, :client_technical_lead, :project_status, :project_stage, :progress_summary, :comics_id
  json.url project_url(project, format: :json)
end
