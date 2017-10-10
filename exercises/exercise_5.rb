require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_rev = Store.sum(:annual_revenue)

puts "Company's annual revenue is #{@total_rev}"

@avg_rev = Store.average(:annual_revenue)

puts "Company's average annual revenue is #{@avg_rev}"

@high_rev = Store.where("annual_revenue < ?", 1000000).count

puts "#{@high_rev} stores make more than $1 million annualy."