extends Control

#Testing appstate and plant_data
func _ready():

	var plant = PlantData.new()

	plant.plant_name = "Monstera"
	plant.plant_type = "Monstera Deliciosa"

	AppState.add_plant(plant)

	print(AppState.plants.size())
