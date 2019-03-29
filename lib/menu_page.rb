class Menu
  def self.selection
    @@selection
  end

  def self.display_menu
    puts "\nHere's a list of stuff you can do. Enter the number of the task you'd like to do.\n\n".green
    puts "1 - See your wish list.\n\n".green
    puts "2 - See your completed hikes.\n\n".green
    puts "3 - See your total miles hiked.\n\n".green
    puts "4 - Find a new hiking buddy.\n\n".green
    puts "5 - Find a trail in your city.\n\n".green
    puts "6 - See a list of all trails.\n\n".green
    puts "7 - Add to your wish list.\n\n".green
    puts "8 - Add a trail to your done list.\n\n".green
    puts "9 - See your profile.\n\n".green
    puts "10 - Exit the program.\n\n".green
    @@selection = gets.chomp.to_i
    Menu.run_task
  end

  def self.run_task
    case self.selection
      when 1
        $hiker.print_trails_from_list($hiker.wish_list)
      when 2
        $hiker.print_trails_from_list($hiker.completed)
      when 3
        puts "\nYou have hiked #{$hiker.miles_hiked} miles so far.  Great Job!\n".bold.cyan
      when 4
        $hiker.find_buddies.each{|buddy_hash| puts "\n#{buddy_hash.keys.first} is looking for a buddy to hike #{buddy_hash.values.first}. \n".bold.cyan }
      when 5
        $hiker.find_trail_by_city.each{|trail|puts "\n#{trail.name} \n".bold.cyan}
      when 6
        $hiker.format_trails(Trail.all)
      when 7
        $hiker.format_trails(Trail.all)
        puts "\nEnter the trail id that you would like to add to your wish list.\n".green
        input = gets.chomp.to_i
        trail = Trail.find(input)
        $hiker.add_to_wish_list(input)
        puts "\n#{trail.name} has been added to your wish list.\n".bold.cyan
      when 8
        $hiker.print_trails_from_list($hiker.wish_list)
        puts "\nEnter the trail id that you would like to add to your done list.\n".green
        input = gets.chomp.to_i
        trail = Trail.find(input)
        $hiker.add_to_done_list(input)
        puts "\n #{trail.name} has been added to your done list.\n".bold.cyan
        puts "\nHere is a list of trails you have done:\n".bold.cyan
        $hiker.print_trails_from_list($hiker.completed)
      when 9
        $hiker.print_user_profile
      when 10
        puts "\nThank you for visiting My Trails!  Happy hiking!\n\n".bold.magenta
        Process.exit!(true)
    end
    Menu.display_menu
  end

end
