#ror_266_homework 1
#Scissors Rock Paper

begin
  begin
    puts "|=======================================|"
    puts "|Welome to Rock Paper Scissors!!!       |"
    puts "|=======================================|"

    begin
  	  puts "please choose one of the following: S / R / P"
  	  user_input = gets.chomp.upcase
    end while !["S", "R", "P"].include?(user_input)

    case user_input
  	  when "R" then user = 1
  	  when "S" then user = 2
  	  when "P" then user = 3
    end

    ans = rand(1..3)

    judge = user - ans
    case judge
  	  when 0 then puts "Tie"
  	  when -1 then puts "Win"
  	  when 2 then puts "Win"
  	  when 1 then puts "Lose"
  	  when -2 then puts "Lose"
    end

    begin
  	  puts "Play Again?: Y / N"
  	  continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

  end while continue == "Y"
  puts "Good Bye! Thanks for playing!"
end