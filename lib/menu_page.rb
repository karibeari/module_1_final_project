class Menu
  def self.selection
    @@selection
  end

  def self.display_menu
    puts "Welcome #{$hiker.name}! Here's a list of stuff you can do. Enter the number of the task you'd like to do.\n\n"
    puts "1 - See your wish list.\n\n"
    puts "2 - See your completed hikes.\n\n"
    puts "3 - See your total miles hiked.\n\n"
    puts "4 - Find a new hiking buddy.\n\n"
    puts "5 - Find a trail in your city.\n\n"
    puts "6 - See a list of all trails.\n\n"
    puts "7 - Add to your wish list.\n\n"
    puts "8 - Add a trail to your done list.\n\n"
    @@selection = gets.chomp.to_i
  end

  def self.run_task
    case self.selection
      when 1
        puts '1'
      when 2

      when 3

      when 4

      when 5

      when 6

      when 7

      when 8

    end
  end

end
