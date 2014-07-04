class AddReferenceToClientsForProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :comic, index: true
  end
end
