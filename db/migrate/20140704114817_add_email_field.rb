class AddEmailField < ActiveRecord::Migration
  def change
  	add_column :comics, :email_address, :string
  end
end
