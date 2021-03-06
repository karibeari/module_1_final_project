require 'pry'
class User < ActiveRecord::Base
  has_many :lists
  has_many :trails, through: :lists


  def add_to_wish_list(trail_id)
    if List.find_by(trail_id: trail_id, user: self, completed: false)
        puts "\nThis trail is already on your wishlist\n".red
    else
      List.create(trail: Trail.find(trail_id), user: self, completed: false)
    end
  end


  def add_to_done_list(trail_id)
    self.lists.each do |list|
      if list.trail_id == trail_id
        List.update(list.id, :completed => true)
      end
    end
  end


  def completed
     List.all.where(user: self, completed: true)
  end


  def wish_list
    List.all.where(user: self, completed: false)
  end


  def print_trails_from_list(lists)
    lists.map{|list| list.trail}.map{|trail|puts "\n#{trail.id} - #{trail.name}\n".bold.cyan}
  end


  def my_location
    self.location
  end


  def find_trail_by_city
    city_trails = Trail.all.where(city: my_location)
    city_trails.empty? ? (puts "Sorry, there are no trails in your city.".red) : city_trails
  end


  def find_buddies
    buddies = []
    self.wish_list.each do |list|
      matches = List.all.where.not(user: self).where(trail_id: list.trail_id, completed: false )
      matches.each do |match|
        buddies << {match.user.name => match.trail.name}
      end
    end
    puts "Sorry, you do not share any trails on your wish list with other hikers.  Try adding more trails to your wish list.".red if buddies.empty?

    buddies
  end


  def miles_hiked
    self.completed.map{|list| list.trail.length}.sum
  end


  def format_trails(trails_array)
    trails_array.each do |trail|
      puts "\n#{trail.id} - #{trail.name}".magenta
      puts "Location: #{trail.city}".magenta
      puts "Length: #{trail.length}".magenta
      puts "Description: #{trail.description}\n\n".magenta
    end
  end


  def print_user_profile
    puts "\nName: #{self.name}\n".magenta
    puts "\nAge: #{self.age}\n".magenta
    puts "\nLocation: #{self.location}\n".magenta
    puts "\nExperience Level: #{self.experience_level}\n".magenta
    puts "\nProfile: #{self.profile}\n".magenta
  end

end
