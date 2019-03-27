require 'pry'
class User < ActiveRecord::Base
  has_many :lists
  has_many :trails, through: :lists

  def get_list
     self.lists
  end


  def get_trails
    self.trails
  end


  def add_to_wish_list(trail)#trail is an object
    if self.get_list.find{|list| list.trail_id == trail.id}
        puts "This trail is already on your wishlist"
    else
      List.create(trail: trail, user: self, completed: false)
    end
  end


  def add_to_done_list(trail_name) #trail_name shoul be string
    self.get_list.each do |list|
      if list.trail.name == trail_name
        List.update(list.id, :completed => true)
      end
    end
  end

  def completed#shows trails completed
    get_trails_from_list(self.get_list.select{|list| list.completed == true})
  end

  def wish_list#shows trails on wish list
    get_trails_from_list(self.get_list.select{|list| list.completed == false})
  end

  def get_trails_from_list(lists)#helper method
    lists.map{|list| list.trail}
  end

  def my_location
    self.location
  end

  def find_trail_by_city
    Trail.all.where(city: my_location)
  end

  def find_buddies
    buddies = []
    self.wish_list.each do |trail|
      matches = List.all.where.not(user: self).where(trail_id: trail.id, completed: false )
        matches.each do |match|
          buddies << {match.user.name => match.trail.name}
        end
    end
    buddies
  end

  def miles_hiked
    self.completed.map(&:length).sum
  end


end
