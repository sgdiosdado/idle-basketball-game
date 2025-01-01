extends RoleStrategy
class_name PointGuardRole

func generate_points(stats: PlayerStats) -> void:
	SignalBus.add_points.emit(1)
