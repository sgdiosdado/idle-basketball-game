extends Node2D
class_name Player

@export var stats: PlayerStats:
	set(value):
		stats = value

var role: RoleStrategy

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if stats:
		$Button.text = stats.name
	else:
		print("No PlayerStats set")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	role.generate_points()
