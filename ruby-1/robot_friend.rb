class RobotFriend
  def initialize(robot_name, companion_name, num_cpus = 2) # The initialize method is what’s called when you use the class factory to create a new object. Eg: jerry = RobotFriend.new("Jerry")
    @name = robot_name # variables that start with an ‘@’ are instance varibles, which are accessible anywhere within the class
    @companion_name = companion_name
    @num_cpus = num_cpus
  end

  def self.disclaimer
    puts "Hello. I am a RobotFriend factory. I create RobotFriends for you. Please remember that your RobotFriend is not a sentient being and that your RobotFriend requires periodical charging of its batteries."
  end

  def say_kind_things
    process
    puts "#{@companion_name}, you’re my favorite person on earth. Don’t forget that!"
  end  

  def make_introduction
    puts "Hello kind stranger! My name is #{@name} and this is my friend #{@companion_name}. You should be friends!"
  end
 def invite_companion_to_dinner
  puts "Hey, #{@companion_name}. Want to grab dinner tonight?"
 end

  def upgrade!
    @num_cpus *= 2
    puts "#{@name} successfully upgraded to #{@num_cpus} CPUs"
  end

  def change_companion(new_companion)
    puts "See you later #{@companion_name}"
    @companion_name = new_companion
    puts "Hi my new frield #{@companion_name}"
  end
  
  
  private
  def process
    display = "processing"
    limiter = 10 / @num_cpus
    (0..limiter).each do
      system "clear"
      (0..3).each do |num|
        print display + "."*num + "\r"
        sleep 0.2
      end
    end
  end
end