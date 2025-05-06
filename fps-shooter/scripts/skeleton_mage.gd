extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_area_3d_body_part_hit(dam: Variant) -> void:
	print('hit me')
	animation_player.play("Death_B")
