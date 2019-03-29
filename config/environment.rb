require 'sinatra/activerecord'
require 'require_all'
require 'pry'
require 'colored'

require_all 'lib'

ActiveRecord::Base.establish_connection(
  adapter:'sqlite3',
  database: 'db/mytrails.db'
)

ActiveRecord::Base.logger = nil

# ben = User.find(1)
# kari = User.find(2)
# mavis = User.find(3)
# hattie = User.find(4)
# polonius = User.find(5)
# regina = User.find(6)
# dorothy = User.find(7)
# eugene = User.find(8)
# mary = User.find(9)
#
#
#
# trail1 = Trail.find(1)
# trail2 = Trail.find(2)
# trail3 = Trail.find(3)
# trail4 = Trail.find(4)
# trail5 = Trail.find(5)

# kari.add_to_wish_list(trail1)
# kari.add_to_wish_list(trail2)
# kari.add_to_wish_list(trail3)
#
# mavis.add_to_wish_list(trail4)
# mavis.add_to_wish_list(trail2)
# mavis.add_to_wish_list(trail3)


 #binding.pry
 #1
