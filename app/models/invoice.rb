class Invoice < ActiveRecord::Base
	belongs_to :employee
end

# This ensures that each invoice has a salesperson attached to it. The invoices belong to a salesperson.