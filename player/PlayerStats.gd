extends Resource
class_name PlayerStats

@export var name: String
@export_range(0, 1) var accuracy: float
@export var strength: int
@export var speed: int
@export var dexterity: int
@export var concentration: int

func debug():
	print(name)
	print({
		"accuracy": accuracy, 
		"concentration": concentration, 
		"dexterity": dexterity, 
		"speed": speed,
		"strength": strength
	})
