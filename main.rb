puts "Welcome to the Coder Bank, please enter your name: "
name = gets.chomp

balance = 0

while true do 

  puts "Hello #{name}, please choose from the options below
  D - Deposit
  W - Withdraw
  B - Show Balance
  E - Exit
  "

  user_input = gets.chomp.capitalize 
  

  if user_input == 'D'
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i

      while amount < 1 do
        puts "Invalid amount, please enter a positive number"
        puts "How much would you like to deposit?"
        amount = gets.chomp.to_i
      end

      balance = balance + amount 
      puts "Thank you, $#{amount} has been sucessfully deposited"
      
  elsif user_input == "W"
    puts "How much would you like to withdraw?"
    amount = gets.chomp.to_i

    while amount < 1 do 
      puts "Invalid amount, please enter a positive number"
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
    end
      balance = balance - amount 
      puts "$#{amount} has been withdrawn, please take the cash"
    
  elsif user_input == "B"
    puts "Current balance is $#{balance}"

  elsif user_input == "E"
    puts "Thank you for using Coder Bank, have a lovely day"
    break
  else
    puts "Invalid option, please try again"
  end
end