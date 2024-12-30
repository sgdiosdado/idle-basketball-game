extends Node2D
class_name Player

@export var attributes: PlayerStats:
	set(value):
		attributes = value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if attributes:
		print(attributes.name)
		print({
			"accuracy": attributes.accuracy, 
			"concentration": attributes.concentration, 
			"dexterity": attributes.dexterity, 
			"speed": attributes.speed,
			"strength": attributes.strength
		})
	else:
		print("No PlayerStats set")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
