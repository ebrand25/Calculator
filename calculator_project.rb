clear# This section takes user input

def calculator
  end_op = "addition"
  end_product = 0
  puts "What is your first number?"
  numb1 = gets.chomp.to_f
  puts "What is your operation?"
  op = gets.chomp
  puts "What is your second number?"
  numb2 = gets.chomp.to_f
  puts "Would you like to add an operation?"
  add_second = gets.chomp.capitalize
  if add_second.upcase == "YES"
  puts "What is your operation?"
  op2 = gets.chomp
  puts "What is your third number?"
  numb3 = gets.chomp.to_f
#    calculator
  else
  end

  # This is normalizing the input, so that the operation is only the lowercase word of the op
  if op == "+" || op == "addition"
    end_op = "addition"
  elsif op == "-" || op == "subtraction"
    end_op = "subtraction"
  elsif op == "*" || op == "multiplication"
    end_op = "multiplication"
  elsif op == "/" || op == "division"
    end_op = "division"
  end

  # This does the same as the above section, for the 2nd op
  if op2 == "+" || op == "addition" || op == "ADDITION"
    end_op2 = "addition"
  elsif op2 == "-" || op == "subtraction" || op == "SUBTRACTION"
    end_op2 = "subtraction"
  elsif op2 == "*" || op == "multiplication" || op == "MULTIPLICATION"
    end_op2 = "multiplication"
  elsif op2 == "/" || op == "division" || op == "DIVISION"
    end_op2 = "division"
  end

  # This operates the first 2 numbers
if end_op == "addition"
    end_product = numb1 + numb2
  elsif end_op == "subtraction"
    end_product = numb1 - numb2
  elsif end_op == "multiplication"
    end_product = numb1 * numb2
  elsif end_op == "division"
    end_product = numb1 / numb2
end

  # This calculates for the 2nd operation and 3rd number
  if add_second.upcase == "YES"
  if end_op2 == "addition"
    end_product = end_product + numb3
  elsif end_op2 == "subtraction"
    end_product = end_product - numb3
  elsif end_op2 == "multiplication"
    end_product = end_product * numb3
  elsif end_op2 == "division"
    end_product = end_product / numb3
  else
end
end
  puts "Your final answer is #{end_product}."
end

calculator


