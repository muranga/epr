namespace :auth  do
  desc "Create first database user"
  task :create_first_user => :environment do
    u = User.new
    u.full_name = "First User"
    u.email = "admin@example.com"
    u.password = "password"
    u.password_confirmation = "password"
    u.user_type= "PC"
    u.save
 
    puts "You can log in with email: '#{u.email}' and password: '#{u.password}'"
  end
end