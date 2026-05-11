extends Node
#Array best option? TODO think of a better way
var plants : Array[PlantData] = []

#Adding plant 
func add_plant(plant : PlantData):
	plants.append(plant)
