extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var despawn_animation_player: AnimationPlayer = $DespawnAnimationPlayer



func _on_area_3d_body_part_hit(dam: Variant) -> void:
	print('hit me')
	animation_player.play("Death_B")
	await get_tree().create_timer(6).timeout
	queue_free()
