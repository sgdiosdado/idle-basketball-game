extends RoleStrategy
class_name ShootingGuardRole

func is_bucket() -> bool:
	var value = randf_range(0.0, 1.0)
	return value >= stats.accuracy

func generate_points() -> void:
	var is_bucket = is_bucket()
	var points = 3 if is_bucket else 0
	SignalBus.add_points.emit(points)
