require 'sinatra/activerecord'
require 'require_all'
require 'pry'

require_all 'lib'

ActiveRecord::Base.establish_connection(
  adapter:'sqlite3',
  database: 'db/mytrails.db'
)

ben = User.find(1)
trail1 = Trail.find(1)
trail2 = Trail.find(2)

binding.pry
1
