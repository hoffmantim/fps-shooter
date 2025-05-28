extends Node3D


#@export var skeleton_scene: PackedScene
var skeleton = load("res://scenes/skeleton_mage.tscn")
	


func _on_spawn_timer_timeout() -> void:
	var instance = skeleton.instantiate()
	instance.position = Vector3(randf_range(-14.5, 14.5), 0.0, randf_range(-14.5, 14.5))
	add_child(instance)
	
