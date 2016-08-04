
@history = []
@variable = 'Hello World'
require 'pry'
def calculator_method
  puts ""
  puts "First Number"
  print "-->"
  @submission_1 = gets.chomp.to_i
  calculator_method2
end

  # history << @sum_1
  # history << @sum_2
  # history << @sum_3
  # history << @sum_4


def calculator_method2
  puts ""
  puts "Operator (+, -, *, /)"
  print "-->"
  @submission_2 = gets.chomp
   case @submission_2
    when '+'
      calculator_method3
    when '-'
      calculator_method3
    when '*'
      calculator_method3
    when '/'
        puts "Are you deviding by zero? 'y or n'"
        print "-->"
        answer = gets.chomp.downcase
      if answer == 'y'
        puts ""
        puts "Sorry can not complete. Please try again"
        calculator_method
      elsif answer == 'n'
        calculator_method3
      end
   end

end

def calculator_method3
  puts ""
  puts "Second Number"
  print "-->"
  @submission_3 = gets.chomp.to_i
  calculator_method4
end


def calculator_method4
  case @submission_2
    when "+"
      sum_1 = @submission_1 + @submission_3
      puts ""
      puts "#{@submission_1}+#{@submission_3}=#{sum_1}"
      @history << sum_1
    when '-'
      sum_2 = @submission_1 - @submission_3
      puts ""
      puts "#{@submission_1}-#{@submission_3}=#{sum_2}"
        @history << sum_2
    when '*'
      sum_3 =  @submission_1 * @submission_3
      puts ""
      puts "#{@submission_1}*#{@submission_3}=#{sum_3}"
        @history << sum_3
    when '/'
      sum_4 =  @submission_1 / @submission_3
      puts ""
      puts "#{@submission_1}/#{@submission_3}=#{sum_4}"
        @history << sum_4
    else
      puts ""
      puts "Please use a valid operator"

      # history << sum_1
      # history << sum_2
      # history << sum_3
      # history << sum_4
  end

end

  #history << @sum_1, @sum_2, @sum_3, @sum_4


while true
  puts ""
  puts "Welcome to the Ruby Calculator!"
  puts ""
  puts "1) Calculator"
  puts "2) History"
  puts "3) Exit"
  puts ""
  print "-->"
  input = gets.chomp.to_i
  if input == 1
    calculator_method
  elsif input == 2
    # history = gets.chomp.to_i
      history = @history
      puts "History:"
      @variable
      @history
      # history << @sum_1
      # history << @sum_2
      # history << @sum_3
      # history << @sum_4
  elsif input == 3
    exit
  else
    puts "I'm sorry, I didn't understand that. Please press the number corresponding with your choice"
  end
end
