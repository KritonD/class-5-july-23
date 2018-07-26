#input = ask "What is the day?"



def eat_breakfast(day)
    if day == "monday"
        puts "I'm going to eat eggs & bacon!"
    
    elsif ["saturday", "sunday"].include?(day)
        puts "Eat pancakes"
    else
        puts "No food for you"
    end
end

puts eat_breakfast("monday")


#4.times do |i|
#    print i
#    say_hello
#end    
