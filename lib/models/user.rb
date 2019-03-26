class User < ActiveRecord::Base
  has_many :lists
  has_many :trails, through: :lists

  def get_list
    user = List.where(user: self)
    user.map{|list| list.trail}
  end

  def add_to_wish_list(trail)
    List.create(trail: trail, user: self)
  end





end
