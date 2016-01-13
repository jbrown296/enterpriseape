class RemoveStaffpersonFromInvoices < ActiveRecord::Migration
  def change
  	remove_column :invoices, :staffperson, :string
  	add_column :invoices, :salesperson_id, :integer
  end
end
# This db was in error so had to fix with the next one. 