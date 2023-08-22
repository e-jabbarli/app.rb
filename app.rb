#!/usr/bin/env ruby
$stdout.sync = true

puts "Welcome to the internship program! What is your name?"

name = gets.chomp

if /;/ =~ name
  random_number = rand(1_000_000..9_999_999)
  puts "Reported! Your response sent to administrator"
  puts "Your report id #{random_number}"
  system("echo \"New report added #{random_number}!\" >> reports.txt") 
  exit
else
  system("echo \"New user added #{name}!\" >> internship_users.txt") 
end
puts "Nice to meet you, #{name}!"
puts "You can join us!"



