require_relative '../config/environment.rb'

logo

Welcome.welcome_message

Welcome.user_id?

$hiker = Welcome.user

puts "Welcome #{$hiker.name}!".green

Menu.display_menu

#Menu.run_task
