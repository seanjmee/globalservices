class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.integer :client_id
      t.string :project_type
      t.string :primary_location
      t.string :license_type
      t.string :complexity_score
      t.string :project_description
      t.integer :budget_days
      t.string :expense_policy
      t.date :project_start
      t.date :project_end
      t.string :vendors
      t.string :products
      t.string :services
      t.integer :estimated_server_count
      t.integer :estimated_desktop_count
      t.string :account_manager
      t.string :project_manager
      t.string :technical_lead
      t.string :client_sponsor
      t.string :client_project_manager
      t.string :client_technical_lead
      t.string :project_status
      t.string :project_stage
      t.text :progress_summary

      t.timestamps
    end
  end
end
