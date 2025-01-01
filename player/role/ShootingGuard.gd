extends RoleStrategy
class_name ShootingGuardRole

func is_bucket(accuracy: float) -> bool:
	var value = randf_range(0.0, 1.0)
	return value >= accuracy

func generate_points(stats: PlayerStats) -> void:
	var is_bucket = is_bucket(stats.accuracy)
	var points = 3 if is_bucket else 0
	SignalBus.add_points.emit(points)
