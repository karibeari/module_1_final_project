class Trail < ActiveRecord::Base
  has_many :lists
  has_many :users, through: :lists
end
