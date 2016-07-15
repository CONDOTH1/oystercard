require './lib/oystercard'

p card = Oystercard.new
p card.top_up(90)

p aldgate_east = Station.new("Aldgate East", 1)
p aldgate = Station.new("Aldgate", 1)
p bank = Station.new("bank", 2)
p canada_water = Station.new("Canada_water", 3)
p canary_warph = Station.new("Canary Warph", 4)
p wimbledon = Station.new("Wimbledon", 5)


puts "touch in, touch out, and card"
p card.touch_in(aldgate)
p card.touch_out(aldgate_east)
p card.balance #89
puts ""
puts card.log.count #1

#works fine

puts "touch in, touch out, and card"
p card.touch_in(aldgate_east)
p card.touch_out(wimbledon)
p card.balance #84
puts ""
puts card.log.count #2
#puts "==========card log========="
#p card.log

#works fine

puts "double touch in and card"
p card.touch_in(aldgate)
p card.balance #84
#puts "==========card log========="
#p card.log

puts "touch out & card"
p card.touch_in(aldgate_east)
p card.balance #78
puts card.log.count #3
p card.touch_out(aldgate)
p card.balance #77
puts ""
puts card.log.count #4
puts "==========card log========="
p card.log

puts "touch out and card"
p card.touch_out(aldgate_east)
p card.balance #71
puts ""
puts card.log.count #5

puts "touch in, touch out, and card"
p card.touch_in(canary_warph)
p card.touch_out(aldgate)
puts "Final Balance"
p card.balance #67
puts "Final Journey"
puts card.log.count #6

puts card.journeys
