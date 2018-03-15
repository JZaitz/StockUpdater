#Create, read, update and destroy

stocks = {
  Amazon: 1600,
  Google: 1150,
  Netflix: 322,
  Facebook: 183,
  Apple: 180
}


puts "****************************"
puts "   Stock Portfolio Data"
puts "****************************"
puts "What would you like to do?"
puts "Type 'add' to add a stock."
puts "Type 'update' to add a stock."
puts "Type 'display' to add a stock."
puts "Type 'delete' to add a stock."
puts "----------------------------"

choice = gets.chomp.downcase

loop do

case choice
when "add"

  puts "What is the name of the stock you would like to add?"
  stock_name = gets.chomp.capitalize
  if stocks[stock_name.to_sym].nil?
    puts "What is the stock price?"
    price = gets.chomp
    stocks[stock_name.to_sym] = price.to_i
    puts "Your stock has been added."
  else
    puts "That stock is already added."
  end
when "update"
  puts "What is the name of the stock you would like to update?"
  stock_name = gets.chomp.capitalize
  if stocks[stock_name.to_sym].nil?
    puts "That stock is not added yet."
    puts "What is the stock price?"
    price = gets.chomp
    stocks[stock_name.to_sym] = price.to_i
    puts "Your stock has been added."
  else
    puts "What is the updated price?"
    price = gets.chomp
    stocks[stock_name.to_sym] = price.to_i
    puts "Your stock price has been updated."
  end

when "display"
  puts "Here are your stocks with their prices:"
  stocks.each {|name, price| puts "#{name} : $#{price}."}

when "delete"
  puts "What stock would you like to delete?"
    stock_name = gets.chomp.capitalize
  if stocks[stock_name.to_sym].nil?
    puts "That stock is not listed."
  else
    stocks.delete(stock_name)
    puts "#{stock_name} has been deleted."
  end
when "quit"
  puts "Goodbye."
else
  puts "Error, try again."
end

puts "Enter 'add', 'update', 'display' or 'delete' if you have other updates or 'quit' to quit."
choice = gets.chomp.downcase

break if choice == "quit"
end
