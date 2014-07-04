class AddReferenceToProjectsforClient < ActiveRecord::Migration
  def change
    remove_column :comics, :project_id
    add_reference :projects, :comic, index: true
  end
end
