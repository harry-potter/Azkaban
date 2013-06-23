#example to user ruby csv reader library
require 'csv'
require_relative 'classes'
class CSVReader
        def read_in_csv_data(csv_file_name)
               CSV.foreach(csv_file_name, :headers => true) do |row|
                       puts "loading csv #{row["price"]}"
                       b = BookInStock.new(row["ISBN"],row["price"],row["cost"])
                       puts b.price
                end
        end
end
csvreader = CSVReader.new
csvreader.read_in_csv_data('data.csv')
