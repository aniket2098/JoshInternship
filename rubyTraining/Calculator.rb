def input
    begin
        puts 'Enter a no.'
        no = gets.chomp
        Float(no)
    rescue
        puts 'Wrong input, Please Re-enter'    
        retry
    end
end

loop do
    no1 = input
    puts "Enter '+' or '-' or '*' or '/'"
    operator = gets.chomp
    no2 = input
    case operator
    when '+'
        puts "The answer is: #{no1 + no2}"
    when '-'
        puts "The answer is: #{no1 - no2}"
    when '*'
        puts "The answer is: #{no1 * no2}"
    when '/'
        puts "The answer is: #{no1 / no2}"
    else
        puts 'Wrong input, please Re-enter'
        next
    end
    puts 'Do you want to continue(y/n): '
    if gets.chomp.upcase == 'N' then break
    end
end