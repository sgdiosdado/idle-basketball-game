extends RoleStrategy
class_name PointGuardRole

func generate_points() -> void:
	SignalBus.add_points.emit(1)
