require 'pry'
class User < ActiveRecord::Base
  has_many :lists
  has_many :trails, through: :lists

  def add_to_wish_list(trail_id)
    if List.find_by(trail_id: trail_id, user: self, completed: false)
        puts "\nThis trail is already on your wishlist\n"
    else
      List.create(trail: Trail.find(trail_id), user: self, completed: false)
    end
  end


  def add_to_done_list(trail_id) #trail_id shoul be string
    self.lists.each do |list|
      if list.trail_id == trail_id
        List.update(list.id, :completed => true)
      end
    end
  end

  def completed#shows trails completed
     List.all.where(user: self, completed: true)

  end

  def wish_list#shows trails on wish list
    List.all.where(user: self, completed: false)
  end

  def print_trails_from_list(lists)#helper method
    lists.map{|list| list.trail}.map{|trail|puts "\n#{trail.id} - #{trail.name}\n"}
  end

  def my_location
    self.location
  end

  def find_trail_by_city
    Trail.all.where(city: my_location)
  end

  def find_buddies
    buddies = []
    self.wish_list.each do |list|
      matches = List.all.where.not(user: self).where(trail_id: list.trail_id, completed: false )
      matches.each do |match|
        buddies << {match.user.name => match.trail.name}
      end
    end
    buddies
  end

  def miles_hiked
    self.completed.map{|list| list.trail.length}.sum
  end

  def format_trails(trails_array)
    trails_array.each do |trail|
      puts "\n#{trail.id} - #{trail.name}"
      puts "Location: #{trail.city}"
      puts "Length: #{trail.length}"
      puts "Description: #{trail.description}\n\n"
    end
  end


end
