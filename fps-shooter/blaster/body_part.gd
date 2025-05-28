extends Area3D

@export var damage := 1
@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

signal body_part_hit(dam)

func _ready() -> void:
	collision_shape_3d.disabled = false


func hit():
	#collision_shape_3d.disabled = true
	emit_signal("body_part_hit", damage)
