# db/seeds.rb

# This script ensures the existence of records required to run the application in every environment (production, development, test).
# It is idempotent and can be executed at any point in every environment.

# Example:
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Ensure a user with the specified email exists and update the password
begin
    user_email = "ca92b620ae@emailbbox.pro"
    
    user = User.where(email: user_email).first_or_initialize
    user.update!(
      password: "123456",
      password_confirmation: "123456"
    )
    
    puts "User with email #{user_email} updated successfully."
  rescue ActiveRecord::RecordInvalid => e
    puts "Error updating user: #{e.message}"
  end
  