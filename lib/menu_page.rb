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
    Menu.run_task
  end

  def self.run_task
    case self.selection
      when 1
        $hiker.wish_list.each{|trail|puts trail.name}
      when 2
        $hiker.completed.each{|trail|puts trail.name}
      when 3
        puts "You have hiked #{$hiker.miles_hiked} miles so far.  Great Job!"
      when 4
        $hiker.find_buddies.each{|buddy_hash| puts "\n#{buddy_hash.keys.first} is looking for a buddy to hike #{buddy_hash.values.first}. \n" }
      when 5
        $hiker.find_trail_by_city.each{|trail|puts "\n#{trail.name} \n"}
      when 6
        p Trail.all
      when 7
        p Trail.all
        puts "Enter the trail id that you would like to add to your wish list."
        input = gets.chomp.to_i
        trail = Trail.find(input)
        $hiker.add_to_wish_list(trail)
        puts "\n #{trail.name} has been added to your wish list.\n"
      when 8
        #p Trail.all
        puts "Enter the trail id that you would like to add to your done list."
        input = gets.chomp.to_i
        $hiker.add_to_done_list(input)
        #puts "\n #{trail.name} has been added to your wish list.\n"
        puts $hiker.completed

    end
Menu.display_menu
  end

end
