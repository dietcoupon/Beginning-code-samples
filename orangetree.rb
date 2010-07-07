class OrangeTree
  
  def initialize
    @age = 0
    @height = 3
    @oranges = 0
    @trigger = 0
    puts 'You have planted an orange tree.'
    menu
  end
  
  def how_tall
    puts
    puts "Your tree is #{@height} feet tall."
    puts
    menu
  end
  
  def count_the_oranges
    if @trigger == 0
      oranges
    end
    puts
    puts "Your tree has #{@oranges} oranges on its branches."
    puts
    menu
  end
  
  def pick_an_orange
    if @oranges == 0
      puts
      puts 'There are no oranges to pick.'
      puts
    else
      @oranges = @oranges - 1
      puts
      puts 'You have removed a delicious, delicious orange from the tree.'
      puts
    end
    menu
  end
  
  def menu
    puts '------Menu------'
    puts '1 - Check height'
    puts '2 - Count oranges'
    puts '3 - Pick an orange'
    puts '4 - End year'
    command = gets.chomp
    if command == '1'
      how_tall
    elsif command == '2'
      count_the_oranges
    elsif command == '3'
      pick_an_orange
    elsif command == '4'
      one_year_passes
    else
      puts
      puts 'Please enter a valid command.'
      puts
      menu
    end
  end
  
  private
  
  def lifespan
    if @age > 15
      puts 'Your tree got caught in a frosty winter.'
      puts 'It was never quite the same.'
      exit
    end
  end
  
  def one_year_passes
    @age = @age + 1
    @height = @height + 3
    @oranges = 0
    @trigger = 0
    lifespan
    puts
    puts 'One year has passed.'
    puts
    menu
  end
  
  def oranges
    if @age > 5
      @oranges = rand(@age)*rand(@age)
      @trigger = 1
    end
  end
  
end

tree = OrangeTree.new