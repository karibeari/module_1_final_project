require 'pry'
class User < ActiveRecord::Base
  has_many :lists
  has_many :trails, through: :lists

  def get_list
     List.where(user: self)
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
        list.completed = true
        list.save
      end
    end
  end

  def see_trails_completed
    lists = self.get_list.select{|list| list.completed == true}
    lists.map{|list| list.trail}
  end


end
