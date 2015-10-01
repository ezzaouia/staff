class CvsReader
	CVS.foreach(file_name, headers : true) do |row|
		@values_in_file_name << BookInStock.new(row["ISBN"], row["PRICE"])
	end
end