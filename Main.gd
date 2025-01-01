extends Node2D

var points := 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.add_points.connect(_points_added)
	$StephenKurry.role = ShootingGuardRole.new($StephenKurry.stats)
	$CobyBryant.role = PointGuardRole.new($CobyBryant.stats)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var label := get_node('Score')
	label.text = str(points)

func _points_added(points_added: int):
	points += points_added
