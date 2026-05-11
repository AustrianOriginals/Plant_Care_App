class_name PlantData
#Variables for plant objects
var id : String
var plant_name : String
var plant_type : String

var pot_size : float
var sunlight : int
var plant_size : int

var last_watered : int
var last_fertilized : int
var last_repotted : int

var next_watering_check : int
var next_fertilizer_check : int
var next_repot_check : int

#Default values
func _init():
	id = str(Time.get_unix_time_from_system())

	plant_name = ""
	plant_type = ""

	pot_size = 0.0
	sunlight = 1
	plant_size = 1

	last_watered = Time.get_unix_time_from_system()
	last_fertilized = Time.get_unix_time_from_system()
	last_repotted = Time.get_unix_time_from_system()

	next_watering_check = 0
	next_fertilizer_check = 0
	next_repot_check = 0

#Assigning values to object and save to file
func to_dict() -> Dictionary:
	return {
		"id": id,
		"plant_name": plant_name,
		"plant_type": plant_type,
		"pot_size": pot_size,
		"sunlight": sunlight,
		"plant_size": plant_size,
		"last_watered": last_watered,
		"last_fertilized": last_fertilized,
		"last_repotted": last_repotted,
		"next_watering_check": next_watering_check,
		"next_fertilizer_check": next_fertilizer_check,
		"next_repot_check": next_repot_check
	}

#Get Data from file
static func from_dict(data : Dictionary) -> PlantData:
	var plant = PlantData.new()

	plant.id = data.get("id", "")
	plant.plant_name = data.get("plant_name", "")
	plant.plant_type = data.get("plant_type", "")

	plant.pot_size = data.get("pot_size", 0.0)
	plant.sunlight = data.get("sunlight", 1)
	plant.plant_size = data.get("plant_size", 1)

	plant.last_watered = data.get("last_watered", 0)
	plant.last_fertilized = data.get("last_fertilized", 0)
	plant.last_repotted = data.get("last_repotted", 0)

	plant.next_watering_check = data.get("next_watering_check", 0)
	plant.next_fertilizer_check = data.get("next_fertilizer_check", 0)
	plant.next_repot_check = data.get("next_repot_check", 0)

	return plant
