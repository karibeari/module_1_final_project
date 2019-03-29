class Welcome

  def self.user
    @@user
  end

  def self.welcome_message
    puts "Welcome to My Trails".bold.blue
  end

  def self.user_id?
    puts "\nPlease enter your user id.  If you have forgotten it, \n\nthen enter your first and last name.  If you need to make a \n\nnew account, type NEW.".bold.blue

    input = gets.chomp

    if input == "NEW"
      @@user = make_new_user
    elsif User.find_by(name: input)
      @@user = User.find_by(name: input)
    else
      @@user = User.find(input.to_i)
    end

    @@user.print_user_profile
  end


  def self.make_new_user
    puts "What is your first and last name?".magenta
    full_name = gets.chomp
    puts "What is your age?".magenta
    age = gets.chomp.to_i
    puts "What is your experience leve? (1-10)".magenta
    experience_level = gets.chomp.to_i
    puts "What is your location (nearest city)?".magenta
    location = gets.chomp
    puts "Please write a brief profile.".magenta
    profile = gets.chomp

    User.create(name: full_name, age: age, experience_level: experience_level, location: location, profile: profile)
  end

end
