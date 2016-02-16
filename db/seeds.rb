# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


locations = Location.create([{description: 'Entrance Hall'}, {description: 'Stairs To Basement'},{description: 'Basement'} ])

entrance_hall = locations.select {|loc| loc.description == 'Entrance Hall'}
entrance_hall = entrance_hall.first;
stairs_to_basement = locations.select {|loc| loc.description == 'Stairs To Basement'}
stairs_to_basement = stairs_to_basement.first;
basement = locations.select {|loc| loc.description == 'Basement'}
basement = basement.first;

for location in locations
  Origin.create(location_id: location.id)
  Destination.create(location_id: location.id)
end

Direction.create({description: "You head down the stairs.", origin_id: entrance_hall.id, destination_id: stairs_to_basement.id})
Direction.create({description: "You head down the stairs.", origin_id: stairs_to_basement.id, destination_id: basement.id})
Direction.create({description: "You head up the stairs."  , origin_id: basement.id, destination_id: stairs_to_basement.id})
Direction.create({description: "You head up the stairs."  , origin_id: stairs_to_basement.id, destination_id: entrance_hall.id})