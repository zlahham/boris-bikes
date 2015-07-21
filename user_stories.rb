nouns = ["person", "bike", "docking station"]
verbs = ["use", "like", "release"]

puts "Objects".ljust(15) + "|" + "Messages".rjust(15)
puts "-------------------------------".center(30)
puts nouns[0].ljust(15) + "|"
puts nouns[2].ljust(15) + "|" + "release_bike".rjust(15)
puts nouns[1].ljust(15) + "|" + "see_bike_works".rjust(15)
puts
puts
puts "DIAGRAM"
puts "__________"
puts
puts "Docking Station" + "-----release_bike------->" + "Bike"
puts "Bike" + "------works?------>" + "Person" + "-->" + "true/false"



# Solution
# Bike <-- works? --> true/false
# DockingStation <-- release_bike --> a Bike