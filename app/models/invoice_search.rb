class InvoiceSearch
	attr_reader :date_from, :date_to # attr is specific to rails and provides pre-defined functions

	def initialize(params)
		params ||= {}
		@date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s) # Shows invoices back to last 7 days.
		@date_to = parsed_date(params[:date_to], Date.today.to_s) # Shows invoice through today
	end

	def scope # Tells us where the ranges are going to be. Searches between date A and date B.
# Using invoice because that's our main model. Running query through db
# in db go to schema file to be sure names are what they should be.
# Looks up invoice db and searches from date from and date to. Some of this is db/SQL code.
		Invoice.where('date BETWEEN ? and ?', @date_from, @date_to)
	end

	# Private method  - nothing else except this file can access/call this:
	private

	def parsed_date(date_string, default)
		Date.parse(date_string)
	rescue ArgumentError, TypeError
		default
	end

end
		

